#!/bin/sh

for htm_file in *.htm
do
    html_file="$htm_file"l
    
    if test -e "$html_file"
    then
        echo "$html_file exists"
        exit 1
    fi
    mv "$htm_file" "$html_file"
done
exit 0
