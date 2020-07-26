#!/usr/bin/env bash

# Run the profile setup if interactive
[ -n "$PS1" -a -f $HOME/.bash_profile ] && . $HOME/.bash_profile
