#!/usr/bin/zsh
# use path to the shell for me it is /usr/bin/zsh, to check path echo $SHELL

file_name="$(date +%Y-%m-%d_%H-%M-%S)_screenshot.png"
file_path="$HOME/Pictures/screenshots/$file_name"

if [[ "$1" == "--region" ]]; then
	region=$(slurp)
	[ -z "$region" ] && notify-send "Screenshot cancelled" && exit 1
	grim -g "$region" "$file_path"
else
	grim "$file_path"
fi

notify-send "Screenshot saved" "$file_path"
