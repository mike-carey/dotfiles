#!/usr/bin/env bash

alias gap='git add -p'
alias gpr='git pull -r'
alias gpo='git po'
alias grh='git reset --hard'
alias gst='git status'
alias gci='git commit'
alias gco='git checkout'

function gcp() { git commit "$@" && git push; }

function gsc() {
  local repo="$1"
  local path="$2"

  git clone --no-checkout "$repo"
  git config core.sparseCheckout true
  echo "$path/*"> .git/info/sparse-checkout
  git checkout master
}
