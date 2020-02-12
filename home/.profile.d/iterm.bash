#!/usr/bin/env bash

###
# Sets up alt movements for iterm
##

# Allow alt movement
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
bindkey "^U" backward-kill-line
bindkey "^X\\x7f" backward-kill-line
bindkey "^X^_" redo
