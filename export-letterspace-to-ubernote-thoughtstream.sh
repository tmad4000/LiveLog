#!/bin/bash

echo "replacing spaces in filenames with underscores...";

for f in *\ *; do mv "$f" "${f// /_}"; done;

echo "done"

echo "concatenating all notes into one ubernote saved on your Desktop as UBERNOTE.txt"

echo "total number of notes:"

echo `stat -l -t '%F %T' /Users/jacobcole/Library/Containers/com.x10studio.LetterspaceMac/Data/Documents/Home/* | wc -l`

stat -l -t '%F %T' /Users/jacobcole/Library/Containers/com.x10studio.LetterspaceMac/Data/Documents/Home/*| awk '{print "OBSCURESTRINGTHATWONTBEDUPLICATED" system("cat " $8) "\n\n" "********** " $6 " **********" "\n"}' | sed '/OBSCURESTRINGTHATWONTBEDUPLICATED/d' > ~/Desktop/UBERNOTE.txt

echo "done"
