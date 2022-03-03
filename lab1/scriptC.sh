#!/bin/bash

echo "1 param: $1"
echo "2 param: $2"
echo "3 param: $3"
echo "4 param: $4"

val1=$1; val2=$2; val3=$3; val4=$4;

max=$val1

for item in $val2 $val3 $val4
do
	if [[ $item -gt $max ]]
	then
		max=$item
	fi
done

echo "Maximum element is: $max"

