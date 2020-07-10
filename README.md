# W3C Process Document repository


This repository is for the editor's draft of the [World Wide Web Consortium Process Document](https://www.w3.org/Consortium/Process/).

The Process document is updated most years by the W3C.
Discussion happens in the context of the W3C Process Community Group
[https://www.w3.org/community/w3process/](https://www.w3.org/community/w3process/).

The editor's draft can be viewed at [https://w3c.github.io/w3process/](https://w3c.github.io/w3process/).

The Process being prepared for release in 2020
includes a singificant number of large changes,
which can be broadly categorized into:
* A convertion of the document from plain HTML to the <a href="#bikeshed">bikeshed specification preprocessor</a>
	(mostly just markup changes,
	some editorial changes)
* Miscellaneous fixes, some editorial, some small, some medium
* A reorganization of section 6,
	to disentangle definitions of maturities from transition between states
	(editorial)
* Significant revisions and additions to the Recommendation Track
* A few final tweaks based on comments gathered during the AC Review Period

As some of these changes overlap,
in order to facilitate review,
the following snapshots of various stages of the evolution have been prepared,
as well as diffs between these various stages.

<table border=1>
<tr><th>Process 2020 drafts at various stages</th><th>Diffs from stage to stage</th></tr>
<tr><td rowspan=2>1. <a href="https://www.w3.org/2019/Process-20190301/">Process 2019</a></td></tr>
<tr><td rowspan=2><a href="https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fwww.w3.org%2F2019%2FProcess-20190301%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2019-02-04-bikesheded.html">diff from 1. to 2.</a></td></tr>
<tr><td rowspan=2>2. <a href="https://w3c.github.io/w3process/snapshots/2019-02-04-bikesheded.html">… converted to bikeshed …</a></td></tr>
<tr><td rowspan=2><a href="https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2019-02-04-bikesheded.html&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2020-01-09-before-everblue.html">diff from 2. to 3.</a></td></tr>
<tr><td rowspan=2>3. <a href="https://w3c.github.io/w3process/snapshots/2020-01-09-before-everblue.html">…with miscellaneous fixes…</a></td></tr>
<tr><td rowspan=2><a href="https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2020-01-09-before-everblue.html&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2020-01-09-refactor.html">diff from 3. to 4.</a></td></tr>
<tr><td rowspan=2>4. <a href="https://w3c.github.io/w3process/snapshots/2020-01-09-refactor.html">…with section 6 refactoring…</a></td></tr>
<tr><td rowspan=2><a href="https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2020-01-09-refactor.html&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2Fafter-everblue.html">diff from 4. to 5.</a></td></tr>
<tr><td rowspan=2>5. <a href="https://w3c.github.io/w3process/snapshots/after-everblue.html">…with REC track revision…</a></td></tr>
<tr><td rowspan=2><a href="https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2Fafter-everblue.html&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fsnapshots%2F2020-06-25">diff from 5. to 6.</a></td></tr>
<tr><td>6. <a href="https://w3c.github.io/w3process/snapshots/2020-06-25">…with final tweaks</td></tr>
</table>

----
## Branches under development

[main](https://github.com/w3c/w3process/tree/main) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=main)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/)

[maintenance-2020](https://github.com/w3c/w3process/tree/maintenance-2020) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=maintenance-2020)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/maintenance-2020) /
[Diff](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fmaintenance-2020)


[director-free](https://github.com/w3c/w3process/tree/director-free) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=director-free)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/director-free/) /
[Diff](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fdirector-free)

[registries](https://github.com/w3c/w3process/tree/registries) branch:
[![Build Status](https://travis-ci.com/w3c/w3process.svg?branch=registries)](https://travis-ci.com/w3c/w3process) /
[Preview](https://w3c.github.io/w3process/registries) /
[Diff](https://services.w3.org/htmldiff?doc1=https%3A%2F%2Fw3c.github.io%2Fw3process%2F&doc2=https%3A%2F%2Fw3c.github.io%2Fw3process%2Fregistries)

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
