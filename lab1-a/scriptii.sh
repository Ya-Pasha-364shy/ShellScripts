#!/bin/bash

let var1=$1; let var2=$2; let var3=$3;
let max=$var1

for item in $var2 $var3
do
	if [[ $item -gt $max ]]; then
		max=$item
	else
		continue
	fi
done

echo "Maximum of all parameters: $max"
