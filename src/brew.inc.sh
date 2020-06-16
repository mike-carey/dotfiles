#!/usr/bin/env bash

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/.init.bash

pushd "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)" >/dev/null
  info "Installing bundle"
  brew bundle install
popd >/dev/null
