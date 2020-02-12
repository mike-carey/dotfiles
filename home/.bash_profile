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

# Set java home for java execution
export JAVA_HOME=$(/usr/libexec/java_home)

# Set Go path for go execution
export GOPATH=$HOME/.go

# Add paths
_PATH="$PATH"
unset PATH
if [[ -f $HOME/.profile.d/path.lst ]]; then
  for p in $(/usr/bin/grep -v '^#.*' <$HOME/.profile.d/path.lst | /usr/bin/grep -v '^ *$'); do
    _PATH="$_PATH:$(eval echo ${p})"
  done
fi
export PATH="$_PATH"
unset _PATH

#set -o vi

if [[ -f $HOME/.profile.d/source.lst ]]; then
  for file in $(/usr/bin/grep -v '^#.*' <$HOME/.profile.d/source.lst | /usr/bin/grep -v '^ *$'); do
    file="$(eval echo ${file})"
    if [[ -f "$file" ]]; then
      source "$file"
    fi
  done
fi
