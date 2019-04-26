# W3C Process Document repository

[master](https://github.com/frivoal/w3process/tree/master) branch: [![Build Status](https://travis-ci.org/w3c/w3process.svg?branch=master)](https://travis-ci.org/w3c/w3process)
[evergreen](https://github.com/frivoal/w3process/tree/evegreen) branch: [![Build Status](https://travis-ci.org/w3c/w3process.svg?branch=evergreen)](https://travis-ci.org/w3c/w3process)

This repository is for the editor's draft of the [World Wide Web Consortium Process Document](https://www.w3.org/Consortium/Process/).

The Process document is updated most years by the W3C.

The editor's draft can be viewed at [https://w3c.github.io/w3process/](https://w3c.github.io/w3process/).

Discussion happens in the context of the W3C Process Community Group [https://www.w3.org/community/w3process/](https://www.w3.org/community/w3process/).

----

This document is maintained using [Bikeshed](https://tabatkins.github.io/bikeshed/).
See the [section about markup](https://tabatkins.github.io/bikeshed/#markup-shortcuts) in Bikeshed's documentation for full details about the syntax.

**Only the source (index.bs) should be committed**,
as this repository is configured to run bikeshed server-side and push the result to the gh-pages branch.

To run Bikeshed locally,
Follow [the instructions](https://tabatkins.github.io/bikeshed/#installing) in Bikeshed's documentation.
Once Bikeshed is installed, just type `bikeshed` to compile the document.

----

To set up long-lived topic branches which get built server side and published to github.io,
follow these steps:

1. **On the master branch** edit deploy.sh to add the name of your topic branch to the `TOPIC_BRANCHES` array. Example:
    ````bash
    TOPIC_BRANCHES=("topic1" "topic2" "topic3")
    ```
2. (Optional Step) Edit the README.md file to add a "Build Status" line for your topic branch.
   See the existing "Build Status" for the master branch as a model.
3. Commit the change(s) above, and push to github.com/w3c/w3process (not your personal fork). Example:
    ````bash
    git add deploy.sh README.md
    git commit -m "Register topic branch for topic3"
    git push upstream master
    ```
4. Create a new branch from the master branch (after the previous commit), using the same name as the one you used in the `TOPIC_BRANCHES` array, and push it to github.com/w3process (not your personal fork). Example:
    ````bash
    git checkout -b topic3
    git push upstream topic3
    ```
