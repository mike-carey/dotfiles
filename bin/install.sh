#!/usr/bin/env bash

function install() {
  set -eo pipefail
}

if [ "${BASH_SOURCE[0]}" = "$0" ]; then
  set -u

  install "${@:-}"
  exit $?
fi
