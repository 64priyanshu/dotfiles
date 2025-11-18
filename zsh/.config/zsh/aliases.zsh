# Update mirrors
alias mirror-update="sudo reflector --verbose --protocol https --latest 5 --country Nepal --sort rate --save /etc/pacman.d/mirrorlist"

# Remove orphan packages
alias orphan-remove='sudo pacman -Rns $(pacman -Qtdq)'

# Update package database
# sudo pacman -Syy

# Downgrade a package
# sudo pacman -U /var/cache/pacman/pkg/<package-info>.pkg.tar.zst

alias v="nvim"
alias vi="nvim"

alias ..="cd .."
alias ....="cd ../.."

alias se="sudoedit"
alias dotf="cd ~/.dotfiles"
alias dotn="cd ~/.config/nvim/"

# Nvim Configs
# alias ovim="NVIM_APPNAME=nvim-old nvim"
