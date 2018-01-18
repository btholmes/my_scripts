#!/usr/bin/bash
filename="$1"
while read -r line
do
    name="$line"
    git clone $name
# 	echo $name
done < "$filename"