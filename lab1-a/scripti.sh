#!/bin/bash

echo "1. Parameter as string: $1"
echo "2. Parameter as string: $2"

string1=$1;string2=$2

if [[ "$string1" == "$string2" ]]
then
	echo "Strings are equal"
else
	echo "String aren't equal"
fi
