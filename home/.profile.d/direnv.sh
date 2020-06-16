###
# Direnv setup
##

if hash direnv 2>/dev/null; then
  case $SHELL in
    fish )
      eval (direnv hook fish)
      ;;
    tcsh )
      eval `direnv hook tcsh`
      ;;
    * )
      eval "$(direnv hook $SHELL)"
      ;;
  esac
fi
