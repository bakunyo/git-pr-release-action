#!/bin/sh

set -eu
export GIT_PR_RELEASE_TOKEN=$GITHUB_TOKEN
git remote set-url origin https://$GITHUB_TOKEN:x-oauth-basic@github.com/$GITHUB_REPOSITORY.git
git-pr-release
