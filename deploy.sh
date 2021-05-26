#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

SOURCE_BRANCH="main"
TARGET_BRANCH="gh-pages"

# List of long-lived topic branch names to be published on github.io as a subdirectory
# Once added, branches should not be removed from here,
# because cool URLs don't change.
# (But you can stop advertising them in README.md)
# Even if the branch itself is retired,
# the built copies will continue to be served unless and until its name is removed from here.
TOPIC_BRANCHES=(
	"director-free"
	"tooling"
	"registries"
	"registries-on-rec-track"
	"registries-separable"
	"evergreen"
	"everblue"
	"section-6-clean-up"
	"maintenance-2020",
	"p2021-before-reorg")

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

# So we can see what we're doing
set -x

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if  [ "$TRAVIS_PULL_REQUEST" != "false" ] || { [ "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ] && ! containsElement "$TRAVIS_BRANCH" "${TOPIC_BRANCHES[@]}" ; }; then
    echo "Skipping deploy; just doing a build."
    ./compile.sh
    exit 0
fi

# Save some useful information
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

# Clone the existing gh-pages for this repo into out/
# Create a new empty branch if gh-pages doesn't exist yet (should only happen on first deply)
git clone $REPO out
cd out
git checkout $TARGET_BRANCH || git checkout --orphan $TARGET_BRANCH
git reset --hard

if containsElement "$TRAVIS_BRANCH" "${TOPIC_BRANCHES[@]}" ; then
    # Delete all existing contents except in the topic branch directory (we will re-create them)
    mkdir -p "$TRAVIS_BRANCH"
    cd "$TRAVIS_BRANCH"
    find -maxdepth 1 ! -name . | xargs rm -rf
    cd ../..

    ./compile.sh "out/$TRAVIS_BRANCH"
else
    # Delete all existing contents except .git and topic branches (we will re-create them)
    for i in "${TOPIC_BRANCHES[@]}"; do
            echo exclude="$exclude ! -name '$i'";
            exclude="$exclude ! -name '$i'";
    done
    eval find -maxdepth 1 ! -name .git ! -name . "$exclude" | xargs rm -rf
    cd ..

    ./compile.sh
fi

# Now let's go have some fun with the cloned repo
cd out
git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"

# If there are no changes to the compiled out (e.g. this is a README update) then just bail.
if [[ -z $(git status --porcelain) ]]; then
    echo "No changes to the output on this push; exiting."
    exit 0
fi

# Commit the "changes", i.e. the new version.
# The delta will show diffs between new and old versions.
git add -A .
git commit -m "Deploy to GitHub Pages: ${SHA} from branch \"${TRAVIS_BRANCH}\""

# Get the deploy key by using Travis's stored variables to decrypt deploy_key.enc
ENCRYPTED_KEY_VAR="encrypted_${ENCRYPTION_LABEL}_key"
ENCRYPTED_IV_VAR="encrypted_${ENCRYPTION_LABEL}_iv"
ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
openssl aes-256-cbc -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in ../deploy_key.enc -out ../deploy_key -d
chmod 600 ../deploy_key
eval `ssh-agent -s`
ssh-add ../deploy_key

# Now that we're all set up, we can push.
git push $SSH_REPO $TARGET_BRANCH
