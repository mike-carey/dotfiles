#!/usr/bin/env zsh

# This script is loaded in after the .zshrc file

# Even though pyenv indicates we should put this in our profile script, profile scripts are loaded
#   before rc files.  Since our .zshrc file is loading the brew path via the plugin, the pyenv
#   executable will not be on the path until after the rc file is loaded.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
