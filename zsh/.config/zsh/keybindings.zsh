# Replaces shell VIM motion with EMCAS which I know nothing of (Sorry)
bindkey -e

# Some Basic EMACS motion keymaps
# CTRL-P - Go to the Previous command in your history
# CTRL-N - Go to the Next command in your history
# CTRL-R - Reverse-search through your history
# CTRL-S - Search forward through your history
# CTRL-A - Move the cursor to the beginning of the line
# CTRL-E - Move the cursor to the end of the line
# CTRL-W - Delete a Word backwards
# ALT-D  - Delete a word forwards
# ALT-F  - Move cursor Forward 1 word
# ALT-B  - Move cursor Backward 1 word

# Disable CTRL+S and CTRL + Q (freeze and unfreeze terminal output)
stty -ixon  # Disable XON/XOFF flow control

# Tmux-sessionizer
bindkey -s '^t' 'tmux-sessionizer\n'

# Select a file, cd into it's parent directory open the file in vim
fzf_file(){
  file=$(find . -type f -not -path '*/.git/*' -not -path '*/node_modules/*' -not -path '*/.venv/*' | fzf)
  if [[ -n "$file" ]]; then
    full_path=$(realpath "$file")
    cd "$(dirname "$full_path")"
    v "$full_path"
  fi
}

# bindkey -s '^f' 'file=$(fzf) && [[ -n "$file" ]] && full_path=$(realpath "$file") && cd "$(dirname "$full_path")" && vim "$full_path"\n'
bindkey -s '^f' 'fzf_file\n'

# Search for directory and cd into it
fzf_dir(){
  dir=$(find . -type d -not -path '*/.git/*' -not -path '*/node_modules/*' -not -path '*/.venv/*' | fzf)
  if [[ -n "$dir" ]]; then
    cd "$dir"
  fi
}

# bindkey -s '^h' '^ucd "$(find . -type d | fzf)"\n'
bindkey -s '^h' 'fzf_dir\n'

# Search history with text that is already on prompt and put cursor at the end
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
