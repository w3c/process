# W3C Process Document repository


This repository is for the editor's draft of the [World Wide Web Consortium Process Document](https://www.w3.org/Consortium/Process/).

The Process document is updated most years by the W3C.
Discussion happens in the context of the W3C Process Community Group
[https://www.w3.org/community/w3process/](https://www.w3.org/community/w3process/).

The editor's draft can be viewed at [https://w3c.github.io/w3process/](https://w3c.github.io/w3process/).

----
## Branches under development

[main](https://github.com/w3c/w3process/tree/main) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=main)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/)

[director-free](https://github.com/w3c/w3process/tree/director-free) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=director-free)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/director-free/) /
[Diff](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fdirector-free)

[registries](https://github.com/w3c/w3process/tree/registries) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=registries)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/registries) /
[Diff](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fregistries)

[registries-on-rec-track](https://github.com/w3c/w3process/tree/registries-on-rec-track) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=registries-on-rec-track)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/registries-on-rec-track) /
[Diff](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fregistries-on-rec-track)

[Diff between the two registry branches](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fregistries-on-rec-track&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fregistries)

----
## Useful searches

[PRs triaged into P2021](https://github.com/w3c/w3process/issues?q=is%3Aopen+-label%3A%22P2021%3A+Priority%22+milestone%3A%22Process+2021%22+) which are not priorities.


----
## Bikeshed

This document is maintained using [Bikeshed](https://tabatkins.github.io/bikeshed/).
See the [section about markup](https://tabatkins.github.io/bikeshed/#markup-shortcuts) in Bikeshed's documentation for full details about the syntax.

**Only the source (index.bs) should be committed**,
as this repository is configured to run bikeshed server-side and push the result to the gh-pages branch.

To run Bikeshed locally,
Follow [the instructions](https://tabatkins.github.io/bikeshed/#installing) in Bikeshed's documentation.
Once Bikeshed is installed, just type `bikeshed` to compile the document.

----
## Setting up Branches

To set up long-lived topic branches which get built server side and published to github.io,
follow these steps:

1. **On the main branch** edit deploy.sh to add the name of your topic branch to the `TOPIC_BRANCHES` array. Example:

    ```bash
    TOPIC_BRANCHES=("topic1" "topic2" "topic3")
    ```

2. (Optional Step) Edit the README.md file to add a "Build Status" line for your topic branch.
   See the existing "Build Status" for the main branch as a model.
3. Commit the change(s) above, and push to github.com/w3c/w3process (not your personal fork). Example:

    ```bash
    git add deploy.sh README.md
    git commit -m "Register topic branch for topic3"
    git push upstream main
    ```

4. Create a new branch from the main branch (after the previous commit), using the same name as the one you used in the `TOPIC_BRANCHES` array, and push it to github.com/w3process (not your personal fork). Example:

    ```bash
    git checkout -b topic3
    git push upstream topic3
    ```
