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

## Overrides ##
alias tar='tar -v'

## Docker Proxies ##
alias dockerun='docker run --rm -it -v $(pwd):/srv -w /srv'

# .bash_aliases
