#!/bin/bash

# So we can see what we're doing
set -x

# Exit with nonzero exit code if anything fails
set -e

# Run bikeshed.  If there are errors, exit with a non-zero code
# Include a warning in the status for topic branches
if [ $1 ] ; then
	bikeshed --print=plain -f spec index.bs index.html --md-status-text='<details class=annoying-warning open><summary>This is not the latest Editor’s Draft of the W3C Process.</summary><p>Check the URL, and make sure this is indeed the version you’re looking for. If not, the current Editor’s Draft can be found at <a href="https://www.w3.org/Consortium/Process/Drafts/">https://www.w3.org/Consortium/Process/Drafts/</a></details>'
else
	bikeshed --print=plain -f spec
fi

# Bikeshed the DoCs as well
for i in issues-*.txt; do
    if [ -f $i ]; then
        bikeshed --print=plain -f issues-list $i
    fi
done

# The out directory should contain everything needed to produce the
# HTML version of the spec.  Copy things there if the directory exists.

OUT=${1:-out}

if [ -d $OUT ]; then
    if [ -d snapshots ]; then
        cp -r snapshots $OUT
    fi
    for i in issues-*.html; do
        if [ -f $i ]; then
            cp -r $i $OUT
        fi
    done
    cp index.html $OUT
fi
