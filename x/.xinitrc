#!/bin/sh

# Load .Xresources
[ -r "$HOME/.Xresources" ] && xrdb -merge $HOME/.Xresources

# Load .xprofile manually
[ -r "$HOME/.xprofile" ] && . $HOME/.xprofile

# Load i3wm
exec i3
