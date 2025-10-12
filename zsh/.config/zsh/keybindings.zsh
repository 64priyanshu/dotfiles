# Replaces shell VIM motion with EMCAS which I know nothing of (Sorry)
bindkey -e

# Some Basic EMACS motion keymaps
# #Cursor Movement
# CTRL-A - Move the cursor to the beginning of the line
# CTRL-E - Move the cursor to the end of the line
# ALT-B  - Move cursor Backward 1 word
# ALT-F  - Move cursor Forward 1 word
# CTRL+B - Move cursor Backward one character
# CTRL+F - Move cursor Forward one character

# #History navigation
# CTRL-P - Go to the Previous command in your history
# CTRL-N - Go to the Next command in your history
# CTRL-R - Reverse-search through your history
# CTRL-S - Search forward through your history

# #Editing
# CTRL-W - Delete a word Backward/Before the cursor
# ALT-D  - Delete a word Forward/After the cursor
# CTRL-K - Delete everything from cursor to end of line
# CTRL-U - Delete everything from cursor to beginning of line

# Disable CTRL+S and CTRL + Q (freeze and unfreeze terminal output)
stty -ixon  # Disable XON/XOFF flow control

# Tmux-sessionizer
bindkey -s '^s' 'tmux-sessionizer\n'

# Sourcing my fzf scripts
source $HOME/.local/scripts/fzf-custom

bindkey -s '^o' 'fzf_file\n'
bindkey -s '^h' 'fzf_dir\n'

# Search history with text that is already on prompt and put cursor at the end
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
