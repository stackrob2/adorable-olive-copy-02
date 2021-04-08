#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://rob-stackbit.ngrok.io/pull/606d327ae1252eecb6225f5e

# build site
hugo

echo "stackbit-build.sh: finished build"
