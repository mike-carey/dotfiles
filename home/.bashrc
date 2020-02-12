#!/usr/bin/env bash

if [[ -f $HOME/.bash_profile ]]; then
  source $HOME/.bash_profile
fi

# Enable direnv
hash direnv 2>/dev/null && eval "$(direnv hook bash)"

#
