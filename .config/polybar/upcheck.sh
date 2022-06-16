#!/bin/bash

echo "CHECKING"
if timeout 1 ping -c 1 1.1.1.1 &> /dev/null
then
	echo "%{F#ddffa7}Online%{F-}"
	echo "[$(date '+%Y-%m-%d %H:%M:%S')]	1" >> ./uptime.txt
else
	echo "%{F#ff8b92}Offline%{F-}"
	echo "[$(date '+%Y-%m-%d %H:%M:%S')]	0" >> ./uptime.txt
fi
