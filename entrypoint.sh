#!/bin/sh

set -eu
export GIT_PR_RELEASE_TOKEN=$GITHUB_TOKEN
git-pr-release $1
