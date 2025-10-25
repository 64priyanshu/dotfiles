# Default Apps
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export TERM="xterm-256color"
export IMAGE="feh"
export VIDEO="mpv"
export OPENER="xdg-open"
export MANPAGER="nvim +Man!"
export PAGER="less"
export WM="i3"
export LAUNCHER="rofi"

# XDG Paths
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# XDG Directories
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"

# History
[ -d "$XDG_DATA_HOME/zsh/" ] || mkdir -p "$XDG_DATA_HOME/zsh/"
export HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

# Paths
export PATH="$HOME/.cargo/bin":$PATH
export PATH="$HOME/.local/bin/":$PATH
