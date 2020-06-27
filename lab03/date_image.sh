#!/bin/sh

for file in "$@"
do
    time=`ls -l "$file" | cut -d" " -f6-8`
    tmp="$file.tmp$$"
    if [ -e "$tmp" ]
    then
        echo "$tmp alread exists"
        exit 1
    fi 
    convert -gravity south -pointsize 36 -annotate 0 "text 0,10 '$time'" $file $tmp &&
    mv $tmp $file
done
