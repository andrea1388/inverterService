#!/bin/bash
export TERM=xterm

# stty -F /dev/ttyUSB0 2400 raw

# Init the mqtt server for the first time, then every 5 minutes
# This will re-create the auto-created topics in the MQTT server if HA is restarted...
while true
do
	# ./mqtt-init.sh  > /dev/null 2>&1 &
	# ./mqtt-subscriber.sh &
	./mqtt-push.sh  > /dev/null 2>&1
	sleep 60
done
