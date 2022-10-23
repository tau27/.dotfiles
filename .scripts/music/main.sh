#!/bin/bash
lerk=$(xsel -b)
stringZ="https://www.youtube.com/watch?v=v8YP60XOn7o&list=12313123123123123"
finl=$(echo ${lerk::43})
name=$(zenity --entry --text="File name")
yt-dlp -f 140 -o $name.m4a $finl
ttle=$(zenity --entry --text="Title")
arts=$(zenity --entry --text="Artist")
albm=$(zenity --entry --text="Album")
tageditor -s -n title="$ttle" artist="$arts" album="$albm" -f $name.m4a
mv $name.m4a ~/Sync/music
