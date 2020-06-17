###
# Aliases for bash shells
##

## Common debian aliases ##
alias ll='ls -al'
alias la='ls -a'

alias tree='tree -C'

## Helpers ##
alias untar='tar -xf'
alias untarz='tar -xzf'
alias back='cd "$OLDPWD"'

# SSH Helpers
alias generate-sshkey='ssh-keygen -b 4096 -t rsa -N ""'
alias my-public-key='f() { (eval cat ${1:-${SSH_KEY_PATH:-$HOME/.ssh/id_rsa}.pub} | pbcopy) && echo "Your public key has been added to your clipboard"; }; f'
alias my-private-key='f() { (eval cat ${1:-${SSH_KEY_PATH:-$HOME/.ssh/id_rsa}} | pbcopy) && echo "Your private key has been added to your clipboard"; }; f'

## Overrides ##
alias tar='tar -v'

## Docker Proxies ##
alias dockerun='docker run --rm -it -v $(pwd):/srv -w /srv'

# .bash_aliases
