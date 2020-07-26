#!/usr/bin/env bash

function gsc() {
  local repo="$1"
  local path="$2"

  git clone --no-checkout "$repo"
  git config core.sparseCheckout true
  echo "$path/*"> .git/info/sparse-checkout
  git checkout master
}
