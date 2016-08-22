#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#For 2nd Gen X1 Carbon ascii tilda key remapped onto Shift Escape
if [ -s ~/.Xmodmap ]; then
       xmodmap ~/.Xmodmap
fi

#xautolock -time 15 -locker "xlock" &
#xautolock -time 20 -locker "systemctl hybrid-sleep" &

# Double tapping activates right-click
xinput set-prop 11 "libinput Click Method Enabled" 0 1 &

xautolock -time 12 -locker "systemctl suspend" -detectsleep &

exec openbox-session
