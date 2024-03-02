#!/bin/sh
# Keep log of previous startup
exec >~/.config/sway/sway.log 1>&1 2>&1
# Set up XDG_RUNTIME_DIR if its directory does not exist
[ -d /var/run/user/`id -u`/ ] || doas /bin/mkdir -p /var/run/user/`id -u` && doas /usr/sbin/chown `whoami`:`whoami` /var/run/user/`id -u`/
# Export environment varibles
export XDG_RUNTIME_DIR=/var/run/user/`id -u`/
export SWAYSOCK=$XDG_RUNTIME_DIR
# Start dbus
exec /usr/local/bin/dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/bus &
# Start sway and kill child processes upon exit
/usr/local/bin/sway && kill -9 `ps -xo pid,ppid,command | grep "dbus\|sway\|.     1 ." | grep -v "/bin/sh ./sway\|grep" | awk '{print $1}'`
