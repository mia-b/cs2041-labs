#!/bin/sh

for file in $1/*
do
    if diff "$file" "$2" >/dev/null 2>&1
    then
        basename "$file"
    fi
done
