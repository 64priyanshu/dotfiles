# Load .xprofile manually
[ -r "${HOME}/.xprofile" ] && . ${HOME}/.xprofile

exec i3
