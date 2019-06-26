# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

# Wait until the processes have been shut down
# while grep -x polybar >/dev/null; do sleep 1; done

. ~/.cache/wal/colors.sh

export POLYBAR_DATE_LABEL="%{F$color1}%{T4}%{T-} %date%%{F-} %{F$color2} %{F-} %{F$color4}%{T4}%{T-} %time%%{F-}"

# Launch the example bar
xrandr | grep -q "HDMI1 connected 1"

if [ $? -eq 0 ]; then
	MONITOR=HDMI1 polybar -rq top &
	MONITOR=HDMI1 polybar -rq bottom &
fi
MONITOR=eDP1 polybar -rq top &
MONITOR=eDP1 polybar -rq bottom &
