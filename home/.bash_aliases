#!/usr/bin/env bash

###
# Aliases for bash shells
##

# shellcheck disable=SC2142

## Common debian aliases ##
alias ll='ls -al'
alias la='ls -a'

alias tree='tree -C'

## Helpers ##
alias untar='tar -xf'
alias untarz='tar -xzf'
alias back='cd "$OLDPWD"'

## Workspace Helpers ##
#alias w='w() { cd "${WORKSPACE_DIRECTORY:-$HOME/workspace}/$1"; }; w'

## Git $$
alias gpr='git pull -r'
alias gpo='git po'
function gcp() { git commit "$@" && git push; }
alias grh='git reset --hard'
alias gst='git status'
alias gci='git commit'
alias gco='git checkout'

# Terraform
alias ti='terraform init'
alias tp='terraform plan'
alias ta='terraform apply'
alias td='terraform destroy'
alias tim='terraform import'

# SSH Helpers
alias generate-sshkey='ssh-keygen -b 4096 -t rsa -N ""'
alias fingerprint='ssh-keygen -E md5 -lf'

function my-public-key() { (eval cat ${SSH_KEY_PATH:-$HOME/.ssh/id_rsa}.pub | pbcopy) && echo "Your public key has been added to your clipboard"; }
function my-private-key() { (eval cat ${SSH_KEY_PATH:-$HOME/.ssh/id_rsa} | pbcopy) && echo "Your private key has been added to your clipboard"; }

## Overrides ##
alias tar='tar -v'

## Docker Proxies ##
alias dockerun='docker run --rm -it -v $(pwd):/srv -w /srv'

## OSX Exclusive ##
alias t="tee >(pbcopy)"

# .bash_aliases
