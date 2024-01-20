#!/usr/bin/zsh

# create list of files
echo "file test1.mp4" > merged.txt
echo "file test2.mp4" >> merged.txt
echo "file test3.mp4" >> merged.txt
echo "file test4.mp4" >> merged.txt

# merge files
ffmpeg -f concat -i merged.txt -codec copy merged.mp4
