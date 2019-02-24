# git-pr-release-action
GitHub Action to run [git-pr-release](https://github.com/motemen/git-pr-release)

### Usage
For example, here is a workflow to run `git-pr-release` when push to staging.

```
workflow "Create PR to master" {
  resolves = ["git-pr-release"]
  on = "push"
}

action "Filter branch" {
  uses = "actions/bin/filter@24a566c2524e05ebedadef0a285f72dc9b631411"
  args = "branch staging"
}

action "git-pr-release" {
  uses = "bakunyo/git-pr-release-action@master"
  needs = ["Filter branch"]
  secrets = ["GITHUB_TOKEN"]
}
```

### Secrets(required)
#### `GITHUB_TOKEN`
Add [GITHUB_TOKEN secret](https://developer.github.com/actions/creating-workflows/storing-secrets/#github-token-secret) to make authenticated calls to the GitHub API.

### Environment variables(optional)
Any environment variables defined by [git-pr-release](https://github.com/motemen/git-pr-release) also can use on this action (`GIT_PR_RELEASE_BRANCH_PRODUCTION`, `GIT_PR_RELEASE_BRANCH_STAGING` etc).
