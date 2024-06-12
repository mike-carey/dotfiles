#!/usr/bin/env bash

function dotfiles.d() {
  set -eo pipefail

  # begin argparse
  OPTIND=1
  while getopts 'h' opt; do
    case "$opt" in
      h ) # help
          usage
          ;;
      * ) # unknown option
          echo "[ERROR] Unknown option: ${OPTARG:-$opt}" >&2
          ;;
    esac
  done
  
  shift $((OPTIND-1))
  # end argparse

  ## Aliases
  ## Environment variables
  ## Paths
  ## Profiles
}

if [ "${BASH_SOURCE[0]}" = "$0" ]; then
  set -u

  dotfiles.d "${@:-}"
  exit $?
fi
