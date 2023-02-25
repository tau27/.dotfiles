#!/bin/bash
cd ~/.local/timpe
lerk=$(wl-paste)
finl=$(echo ${lerk::43})
name=$(zenity --entry --text="File name")
ttle=$(zenity --entry --text="Title")
arts=$(zenity --entry --text="Artist")
yt-dlp -f "ba" -o "pasas" $finl
mat2 pasas* --inplace
ffmpeg -i pasas* -c:a flac $name.flac
rm pasas*
mat2 $name.flac --inplace
tageditor -s -n title="$ttle" artist="$arts" album="Nope" -f $name.flac
mv $name.flac /home/gleb/Desktop/cllbs/music/
