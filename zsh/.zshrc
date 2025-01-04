# Source
source $HOME/.config/zsh/exports.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/zshprompt.zsh

# Plugins 

# 1. Syntax Highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#2 Autosuggestions (based on previous commands and history)
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/zsh-autosuggestions 
source $HOME/zsh-autosuggestions/zsh-autosuggestions.zsh
     
#3 Fzf Completion menu
# git clone https://github.com/Aloxaf/fzf-tab ~/fzf-tab
autoload -U compinit; compinit
source $HOME/fzf-tab/fzf-tab.plugin.zsh

# As much I love VIM motion, I hate having to go through the horrible mess it is in terminals
bindkey -e # Replaces VIM modes with EMCAS which I know nothing of
