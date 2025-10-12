# Update mirrors
alias update-mirror="sudo reflector --verbose --latest 5 --country Nepal --sort rate --save /etc/pacman.d/mirrorlist"

# Remove orphan packages
alias remove-orphan="sudo pacman -Rns $(pacman -Qtdq)"

alias v="nvim"
alias vi="nvim"

alias ..="cd .."
alias ....="cd ../.."

alias se="sudoedit"
alias dotf="cd ~/.dotfiles"
alias dotn="cd ~/.config/nvim/"

# Nvim Configs
alias ovim="NVIM_APPNAME=nvim-old nvim"
