#!/bin/bash

summ=""

loop=yes

while [ $loop = "yes" ]; do
	read -p "Enter some stroke:" var

	if [ "$var" != "q" ]; then
		summ+="${var}"
	else
		loop=no
	fi
done

echo "Result stroke is: $summ"
