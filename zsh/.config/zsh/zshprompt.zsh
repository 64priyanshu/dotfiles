# Autoload necessary modules
autoload -Uz vcs_info
autoload -U colors && colors

# Enable vcs_info for Git only
zstyle ':vcs_info:*' enable git

# Hook vcs_info to run before each prompt
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# Add a hook to check for untracked files in the directory
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null; then
        hook_com[staged]+='!'
    fi
}

# Configure vcs_info settings
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})"

# Format the main prompt
PROMPT="%B%(?:%{$fg_bold[green]%}󰁕 :%{$fg_bold[red]%}󰁕 )%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+="\$vcs_info_msg_0_%{$reset_color%}%b "
