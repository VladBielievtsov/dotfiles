#!/bin/bash

options=" Lockin\n Power Off\n Reboot\n Logout"

choice=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -theme "~/.config/rofi/themes/power-menu.rasi")

case "$choice" in
" Lockin") hyprlock ;;
" Power Off") systemctl poweroff ;;
" Reboot") systemctl reboot ;;
" Logout") pkill -KILL -u $USER ;;
esac
