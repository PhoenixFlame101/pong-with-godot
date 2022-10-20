# Contributing

---

Feel free to open a PR on any active issues. Head over to the issues tab to see what needs to be done.

## Pull Requests

Create a new branch on your fork, describing the feature/bugfix, and add the issue number at the end.

Make sure the name is short but descriptive.

Example

    Issue #4: Lack of SHA-1 support
    Branch name: add-sha1-4

Commit using `git commit` to write a full message instead of just a single line, and highlight all the changes you've made in bullet points. Do the same in the PR body.


Try and limit each PR to one commit unless there is a good reason not to. You can soft reset against the master and commit again to meet this requirement.

    git checkout your-issue-branch
    git reset --soft main
    git add .
    git commit

Make sure the code actually compiles and is working correctly before opening the pull request.

## Issues

If you're raising a new issue, make sure it doesn't already exist as a feature and it is not already an issue on GitHub.

Have a clear and concise title, along with a body where you make your case on why the feature is necessary.  
If you are reporting a bug, make sure to include information on your setup and steps to reproduce the error.

##### Happy Coding!
