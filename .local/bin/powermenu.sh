#!/usr/bin/zsh
# use path to the shell for me it is /usr/bin/zsh, to check path echo $SHELL

chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Hibernate\n  Lock" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/power.rasi"')

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Suspend") systemctl suspend ;;
	"  Hibernate") systemctl hibernate ;;
#	"  Log Out") bspc quit ;;
	"  Lock") hyprlock ;;
	*) exit 1 ;;
esac
