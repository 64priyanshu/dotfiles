export XDG_DATA_HOME="$HOME/.local/share"

# History
[ -d "$XDG_DATA_HOME/bash/" ] || mkdir -p "$XDG_DATA_HOME/bash/"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export HISTSIZE=1000000
export HISTFILESIZE=1000000

# Append rather than overwrite
shopt -s histappend
