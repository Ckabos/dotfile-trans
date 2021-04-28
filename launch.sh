#!/usr/bin/env zsh

# Terminate process of polybar bars
killall polybar -q

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar top / polybar -> onetop
polybar onetop -c /home/$USER/.config/polybar/config.ini &

# Launche the bar bottom /polybar -> onebottom
polybar onebottom -c /home/$USER/.config/polybar/config.ini &

