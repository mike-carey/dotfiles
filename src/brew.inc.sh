#!/usr/bin/env bash

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/.init.bash

__DIR__="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
_DEFAULT_CONFIG_FILE=$__DIR__/../etc/brew.yml

CONFIG_FILE=${CONFIG_FILE:-$_DEFAULT_CONFIG_FILE}

BREW_FILE=$(mktemp)
trap "rm -f $BREW_FILE" EXIT

/usr/bin/env ruby $__DIR__/brew.rb $CONFIG_FILE > $BREW_FILE

bash $BREW_FILE
