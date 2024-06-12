#!/usr/bin/env bash

function setup() {
  set -eo pipefail
}

if [ "${BASH_SOURCE[0]}" = "$0" ]; then
  set -u

  setup "${@:-}"
  exit $?
fi
