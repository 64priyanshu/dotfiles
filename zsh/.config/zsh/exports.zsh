export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
# export TERM="xterm-256color"

HISTFILE="$HOME"/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

export PATH="$HOME/.cargo/bin":$PATH
export PATH="$HOME/.local/scripts/":$PATH

#pnpm (required for live-server)
export PNPM_HOME="/home/priyanshu/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
