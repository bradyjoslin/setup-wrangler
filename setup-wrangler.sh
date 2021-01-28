#!/bin/bash

set -e

if [ "$RUNNER_OS" == "Windows" ]; then
  npm i @cloudflare/wrangler -g
else
  npm i @cloudflare/wrangler -g
  echo "~/.npm-global/bin" >> $GITHUB_PATH
fi