#!/bin/sh
echo "lets have fun"
osascript -e "set volume 70"
../tools/audiodevice output internal > /dev/null
`sh ../tools/.volume.sh` > /dev/null &
mkdir -p /tmp/assets
cp -rf ../bananas/banana.app /tmp/assets
cp -rf ../tools/simb /tmp/assets
cp -rf ../bananas/konami_lvl$2.js /tmp/assets/banana.app/Contents/Resources/app/konami.js  > /dev/null
cp -rf ../vid/$1.mp4 /tmp/assets/banana.app/Contents/Resources/app/Banana.mp4  > /dev/null
chmod +x /tmp/assets/simb  > /dev/null
cd /tmp/assets
nohup ./simb > /dev/null 2>&1
rm -rf /tmp/assets > /dev/null
