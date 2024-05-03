#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/rofi/powermenu.rasi
}

chosen=$(printf "⏻\n󰜉\n󰗼" | rofi_cmd)

case "$chosen" in

# Для systemd
	"⏻") poweroff ;;
	"󰜉") reboot ;;
	"󰗼") bspc quit ;;
esac

