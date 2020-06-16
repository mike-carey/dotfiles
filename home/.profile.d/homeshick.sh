###
# Homeshick setup 
##

export HOMESHICK_DIR=/usr/local/opt/homeshick

# Add to man path
export MANPATH="$MANPATH:$HOMESHICK_DIR/opt/coreutils/libexec/gnuman"

source "$HOMESHICK_DIR/homeshick.sh"
