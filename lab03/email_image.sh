#!/bin/sh

for file in "$@"
do 
    display "$file"
    echo -n "Address to email this image to? "
    read email
    if test -n "$email"
    then
        echo -n "Message to accompany image? "
        read msg
        subject=`echo "$file" | cut -d"." -f1`
        echo "$msg" | mutt -s '$subject' -e 'set copy=no' -a "$file" -- "$email"
        echo "$file sent to $email"
    fi
done
