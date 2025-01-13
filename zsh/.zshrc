# Source
source $HOME/.config/zsh/exports.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/zshprompt.zsh
source $HOME/.config/zsh/keybindings.zsh

# Plugins
PLUGIN_PATH="$HOME/.config/zsh/plugins"

# 1. Syntax Highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins
source "${PLUGIN_PATH}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

#2 Autosuggestions (based on previous commands and history)
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins
source "${PLUGIN_PATH}/zsh-autosuggestions/zsh-autosuggestions.zsh"

#3 Fzf Completion menu
# git clone https://github.com/Aloxaf/fzf-tab ~/.config/zsh/plugins
autoload -U compinit; compinit
source "${PLUGIN_PATH}/fzf-tab/fzf-tab.plugin.zsh"
