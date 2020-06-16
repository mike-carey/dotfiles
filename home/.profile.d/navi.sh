###
# Navi setup
##

if hash navi 2>/dev/null; then
  case $SHELL in
    fish )
      navi widget fish | source
      ;; 
    * )
      source <(navi widget $SHELL)
      ;;
  esac
fi
