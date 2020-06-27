#!/bin/sh

for file in "$@"
do
    iFiles=`egrep "#include" "$file" | egrep -o "\".*\"" | sed "s/\"//g"`
    
    for include_file in $iFiles
    do
        [ ! -e $include_file ] && echo "$include_file included into $file does not exist"
    done
done
