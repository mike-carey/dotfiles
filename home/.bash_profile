###
# Sets up a bash shell
##

# Add aliases
[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases

# export MANPATH="/usr/local/man:$MANPATH"

# Set the ssh key path
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set vim as the default editor
export EDITOR=vim

# Can replace with **/*.sh for recursive globbing but requires
# shopt -s globstar
for file in "$HOME"/.profile.d/*.sh "$HOME"/.profile.d/*/*.sh; do
  [ -f "$file" ] && . "$file"
done
unset file
