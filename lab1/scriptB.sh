#!/bin/bash

echo "First argument as integer number: $1"
echo "Second argument as integer number: $2"

let first=$1
let second=$2

if [[ $first -gt $second ]]
then
	echo "First argument $first is greater then second argument $second"
elif [[ $first -lt $second  ]]
then
	echo "Second argument $second greater then first argument $first"
else
	echo "Arguments are equals"
fi
