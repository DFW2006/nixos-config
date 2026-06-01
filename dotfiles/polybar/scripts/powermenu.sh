#!/usr/bin/env bash

# Options
shutdown="Shutdown"
reboot="Reboot"
lock="Lock"
logout="Logout"

options="$shutdown\n$reboot\n$lock\n$logout"

# Run rofi pointing directly to our new theme file
chosen="$(echo -e "$options" | rofi -dmenu -i -p "System:" -theme ~/.config/rofi/theme.rasi)"

case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        echo "Locking..."
        ;;
    $logout)
        pkill sxwm
        ;;
esac
