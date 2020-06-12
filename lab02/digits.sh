#!/bin/sh

while read digits
do
    echo $digits | tr '[0-4]' '<' | tr '[6-9]' '>'
done
