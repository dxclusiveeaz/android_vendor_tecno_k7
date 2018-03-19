#!/bin/sh
echo "persist.prize.music = $(/system/bin/getprop persist.prize.music)"
if [ $(/system/bin/getprop persist.prize.music) == "1" ]; then
if test -d "/sdcard/Music"; then
echo "/sdcard/Music path exist"
(cp /system/media/audio/musics/* /sdcard/Music/)
(cp /system/media/audio/movies/* /sdcard/Movies/)

/system/bin/setprop persist.prize.music 2
else
echo "/sdcard/Music path not exist"
fi
else
echo "persist.prize.music is not 1"
fi
