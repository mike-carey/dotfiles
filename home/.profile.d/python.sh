###
# Python setup
##

if hash python 2>/dev/null && [[ "$(uname -s)" =~ Darwin* ]]; then
  export PATH="$PATH:$HOME/Library/Python/2.7/bin:$HOME/Library/Python/3.6/bin"
fi
