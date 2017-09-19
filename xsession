#!/bin/sh

if [ -x screen-setup ]; then
    screen-setup auto
fi
xsetroot -solid black

# Start i3
if [ -z "$DESKTOP_SESSION" -a -x /usr/bin/ck-launch-session ]; then
    exec ck-launch-session dbus-launch --exit-with-session /usr/bin/i3
else
    exec /usr/bin/i3
fi

