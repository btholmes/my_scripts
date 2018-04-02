#!/usr/bin/bash
a=1
array=( "Aug" "Sep" "Oct")
month=0

for((i = 1; i <= 10; i++)) do 
	((a++))
	if (($a == 4)); then
		echo "In if $a"; 
	else 
		((a=5))
		echo "$a    and array is  ${array[$month]} $day 2017 -0600" 
		((month++))

	fi
done;