#!/bin/bash
i=1

while [ '$i > 0' ]
do
	osascript -e "set volume output volume 75"
	i=$[$i+1]
done
