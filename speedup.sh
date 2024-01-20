#!/usr/bin/zsh

# speedup by 4x
ffmpeg -i $1.MP4 -filter_complex "[0:v]setpts=0.25*PTS[v];[0:a]atempo=4[a]" -map "[v]" -map "[a]" -c:v h264_videotoolbox $1.processed.mp4
