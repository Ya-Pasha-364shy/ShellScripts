#!/bin/bash

echo "Script's name: $0"
echo "Value of first argument: $1"
echo "Value of second argument: $2"

val1="$1"
val2="$2"

if [[ "$val1" == "$val2" ]]
then
	echo "Arguments are equal !"
else
	echo "Arguments are not equal !"
fi
