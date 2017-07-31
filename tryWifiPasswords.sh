#!/usr/bin/bash
filename="$1"
WIFI_NETWORK_NAME="$2"
AIRPORT="en0"

networksetup -setairportpower $AIRPORT off
networksetup -setairportpower $AIRPORT on
sleep 2

while read -r line
do
	name="$line"
	if networksetup -setairportnetwork $AIRPORT $WIFI_NETWORK_NAME $line | grep -i -a "Failed" ;
	then
	    echo 'Failed to connect, just restarting...';
	    networksetup -setairportpower $AIRPORT off
	    networksetup -setairportpower $AIRPORT on
	    sleep 1
	else
		echo 'Connected to : ' $WIFI_NETWORK_NAME 'with ' $line
	fi


done < "$filename"
