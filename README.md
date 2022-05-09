# git-pr-release-action

GitHub Action to run [git-pr-release](https://github.com/motemen/git-pr-release)

### Usage

For example, here is a workflow to run `git-pr-release` when push to staging.

```yaml
name: Create PR from staging to master
on:
  push:
    branches:
      - staging
jobs:
  gitPrRelease:
    name: git-pr-release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
      with:
        fetch-depth: 0
    - name: git-pr-release
      uses: bakunyo/git-pr-release-action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

or see `.github/workflows` of this repository.

### Environment variables

#### `GITHUB_TOKEN` (required)

Add [GITHUB_TOKEN secret](https://help.github.com/en/articles/virtual-environments-for-github-actions#github_token-secret) to make authenticated calls to the GitHub API.

#### Other optional environment variables

Any environment variables defined by [git-pr-release](https://github.com/motemen/git-pr-release) also can use on this action (`GIT_PR_RELEASE_BRANCH_PRODUCTION`, `GIT_PR_RELEASE_BRANCH_STAGING` etc).

### Custom arguments
`git-pr-release` command supports some arguments. These can be specified by using `args` input.

```yaml
- name: git-pr-release
  uses: bakunyo/git-pr-release-action@master
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
  with:
    args: '--squashed' # If you are using squash merge
```
