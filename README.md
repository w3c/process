# W3C Process Document repository


This repository is for the editor's draft of the [World Wide Web Consortium Process Document](https://www.w3.org/policies/process/).

The Process document is updated most years by the W3C.
Discussion happens in the context of the W3C Process Community Group
[https://www.w3.org/community/w3process/](https://www.w3.org/community/w3process/), mostly in this Github repository, but also on the <a href="https://lists.w3.org/Archives/Public/public-w3process/">archived public mailing list</a>.

----
## Branches under development

* [main](https://github.com/w3c/process/tree/main) branch (current draft of the CG):
[Preview](https://www.w3.org/policies/process/drafts/)
* [ab-tag-discipline](https://github.com/w3c/process/tree/ab-tag-discipline) branch, where potential procedures for removal and recall of AB or TAG members are being worked out: [preview](https://www.w3.org/policies/process/drafts/ab-tag-discipline)

----
## Useful searches

* [Issues and PRs without a milestone](https://github.com/w3c/process/issues?q=is%3Aopen%20no%3Amilestone)
* [Issues and PR included and targetted for the next release](https://github.com/w3c/process/issues?q=is%3Aopen%20milestone%3A%22Process%202024%2F2025%22%20)
* [Issues and PR marked as Agenda+](https://github.com/w3c/process/issues?q=%20label%3AAgenda%2B%20)

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

2. (Optional Step) Edit the README.md file to line for your topic branch.
   See the "Branches under development" section and use existing branches as a model.

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
