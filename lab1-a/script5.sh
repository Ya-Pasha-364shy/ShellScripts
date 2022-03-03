#!/bin/bash

echo "+--- Menu ---+"

echo "1. Start 'nano'"
echo "2. Start 'vi'"
echo "3. ifconfig"

where=$PWD

read -p "Your choise: " var

if [[ $var == 1 ]]; then
	nano
elif [[ $var == 2 ]]; then
	vi
elif [[ $var == 3 ]]; then
	ifconfig
else
	exit
fi
