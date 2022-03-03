#!/bin/bash

loop=1
counter=0

while [ $loop ]; do
	read -p	 "Enter some integer number: " var

	if [[ $(($var%2)) -eq $loop ]]; then
		counter=$(($counter + 1))
	else
		break
	fi
done

echo "Count of inputed number: $counter"
