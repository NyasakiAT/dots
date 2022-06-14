#!/bin/bash

echo "CHECKING"
if timeout 1 ping -c 1 1.1.1.1 &> /dev/null
then
	echo "%{F#ddffa7}UP%{F-}"
else
	echo "%{F#ff8b92}DOWN%{F-}"
fi
