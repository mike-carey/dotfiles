#!/usr/bin/env bash

function load_init() {
  function _log() {
    {
      local args=$-
      set +x

      local reset=$'\e[39m'
      local no_color="${NO_COLOR:-false}"

      local color="$1"
      shift
      local id="$1"
      shift

      echo -n '['

      if [[ ${no_color} != true ]]; then
        echo -en "${color}"
      fi

      echo -n "$id"

      if [[ ${no_color} != true ]]; then
        echo -en "${reset}"
      fi
      echo -n '] '

      echo "${@:-}"

      set $args
    }>&2
  }

  function debug() {
    if [[ "${DEBUG:-false}" == true ]]; then
      _log $'\e[96m' DEBUG "$*"
    fi
  }
  export -f debug

  function info() {
    _log $'\e[92m' INFO "$*"
  }
  export -f info

  function warn() {
    _log $'\e[93m' WARN "$*"
  }
  export -f warn

  function error() {
    _log $'\e[91m' ERROR "$*"
  }
  export -f error
}

if [[ ${__INIT_LOADED:-false} == true ]]; then
  :
else
  load_init

  export __INIT_LOADED=true
fi
