#!/bin/bash

brightness="/sys/class/backlight/intel_backlight/brightness"
presbright=`cat /sys/class/backlight/intel_backlight/brightness`
perc=`expr $presbright "*" 100 "/" 1500`

case "$1" in
	up)
	  echo $(( ${presbright})) > $brightness
      notify-send " Luz" -i notification-display-brightness-high -h int:value:$perc -h string:x-canonical-private-synchronous:brightness &
	;;
	down)
	  echo $(( ${presbright})) > $brightness
      notify-send " Luz" -i notification-display-brightness-low -h int:value:$perc -h string:x-canonical-private-synchronous:brightness &
	;;
	status)
	  echo $presbright
      notify-send " " -i notification-display-brightness-low -h int:value:$perc -h string:x-canonical-private-synchronous:brightness &
	;;
	*)
	  echo "Accepted arguments are: up, down, status."
	;;
esac

exit 0
