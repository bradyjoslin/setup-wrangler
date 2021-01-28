#!/bin/bash

set -e

install_wrangler() {
    # If a Wrangler version is detected as input
    if [ -z "$WRANGLER_VERSION" ]
    then
        npm i @cloudflare/wrangler -g
    else
        npm i "@cloudflare/wrangler@$WRANGLER_VERSION" -g
    fi  
}


if [ "$RUNNER_OS" == "Windows" ]; then
    install_wrangler
else
    install_wrangler
    echo "$HOME/.npm-global/bin" >> "$GITHUB_PATH"
fi
