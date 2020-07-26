###
# Direnv setup
##

if hash direnv 2>/dev/null; then
  _shell=bash
  case $SHELL in
    *zsh )
      _shell=zsh
      ;;
  esac
  eval "$(direnv hook $_shell)"
fi
