#!/bin/bash

i3status | while :
do 
	read line
	mullvad=$(mullvad status)
	echo "${mullvad} | $line" || exit 1
done
