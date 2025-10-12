# Autostart X at login
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  # echo startx # log out when X session ends
  startx # remain logged in when X session ends
fi
