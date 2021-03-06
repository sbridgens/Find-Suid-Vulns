#!/bin/sh
tempfile="/tmp/$0.$$"
trap "rm $tempfile" 0
find / \( -type f -a -user root -a -perm -4001 \) -print > $tempfile
for file in `cat $tempfile`; do
    strings -a $file | awk '/^gets$|^strcpy$|^strcat$|^sprintf$/\
    { printf ("% -10s \t % -50s \n"), $1, file }' "file=$file" -
done
