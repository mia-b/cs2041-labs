#!/bin/sh

for jpgF in *.jpg
do
    pngF=`echo $jpgF | sed "s/jpg$/png/"`
    
    if test -e "$pngF"
    then
        echo "$pngF" already exists
        exit 1
    fi 
    
    convert "$jpgF" "$pngF"
    rm "$jpgF"
done
