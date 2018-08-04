#!/bin/bash
i=1

while [ '$i > 0' ]
do
	osascript -e "set volume output volume 85"
	i=$[$i+1]
done
