#!/bin/sh
python3 -m http.server 10000 &
while true; do
  ffmpeg -re -i intro.mp4 -c:v libx264 -preset veryfast -b:v 2500k -c:a aac -ar 44100 -f flv rtmp://a.rtmp.youtube.com/live2/$YT_KEY || true
  ffmpeg -re -i https://lb1-live.lourdes-france.com/ingest/cam_grotte/playlist.m3u8 -c:v libx264 -preset veryfast -b:v 2500k -c:a aac -ar 44100 -f flv rtmp://a.rtmp.youtube.com/live2/$YT_KEY || true
  sleep 5
done
