#!/bin/bash
cd ~/.local/timpe
lerk=$(wl-paste)
if test ${lerk:8:1} = "m"
then
    finl=$(echo ${lerk:14:31})
else
    finl=$(echo ${lerk:8:35})
fi
name=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-64} | head -n 1)
ttle=$(gum input --placeholder="Title")
arts=$(gum input --placeholder="Artist")
yt-dlp --extractor-arg "youtube:player_client=ios" -f "ba[protocol=m3u8_native]" -o "pasas" $finl
mat2 pasas* --inplace
ffmpeg -i pasas* -c:a aac $name.mkv
rm pasas*
mat2 $name.mkv --inplace
tageditor -s -n title="$ttle" artist="$arts" album="Nope" -f $name.mkv
mv $name.mkv /home/tau/Desktop/cllbs/music/
