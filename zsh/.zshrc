# Source
source $XDG_CONFIG_HOME/zsh/aliases.zsh
source $XDG_CONFIG_HOME/zsh/zshprompt.zsh
source $XDG_CONFIG_HOME/zsh/keybindings.zsh

# Plugins
PLUGIN_PATH="$XDG_CONFIG_HOME/zsh-plugins"

# 1. Syntax Highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh-plugins/zsh-syntax-highlighting
source "${PLUGIN_PATH}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

#2 Autosuggestions (based on previous commands and history)
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-plugins/zsh-autosuggestions
source "${PLUGIN_PATH}/zsh-autosuggestions/zsh-autosuggestions.zsh"

#3 Fzf Completion menu
# git clone https://github.com/Aloxaf/fzf-tab ~/.config/zsh-plugins/fzf-tab
autoload -U compinit; compinit
source "${PLUGIN_PATH}/fzf-tab/fzf-tab.plugin.zsh"

#
source $HOME/temp.zsh
