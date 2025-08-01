#!/usr/bin/zsh
# use path to the shell for me it is /usr/bin/zsh, to check path echo $SHELL

# Increment, decrement, or mute the volume using Pipewire and send a notification

case $1 in
	up)
		# Set the volume on (if it was muted)
		wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
		wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+
		;;
	down)
		wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
		wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-
		;;
	mute)
		wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
		;;
esac

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | tr -dc '0-9' | sed 's/^0\{1,2\}//')


send_notification() {
	if [ "$1" = "mute" ]; then TEXT="Currently muted"; else TEXT="Currently at ${VOLUME}%"; fi

	notify-send -a "Volume" -r 9993 -h int:value:"$VOLUME" "Volume" "$TEXT" -t 1000
}

case $1 in
	mute)
		case "$(wpctl get-volume @DEFAULT_AUDIO_SINK@)" in
			*MUTED* ) send_notification mute;;
			*       ) send_notification;;
		esac;;
	*)
		send_notification;;
esac
