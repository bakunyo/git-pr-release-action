#!/bin/sh

set -eu
export GIT_PR_RELEASE_TOKEN=$GITHUB_TOKEN
git config --global --add safe.directory $(pwd)
git-pr-release
