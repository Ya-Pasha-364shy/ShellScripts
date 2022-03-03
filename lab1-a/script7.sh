#!/bin/bash

while [[ 1 -eq 1 ]]; do
	read -p "Enter value of first variable: " var1
	read -p "Enter value of second variable: " var2
	read -p "Enter value of third variable: " var3

	if [ $var1 = 'q' ]; then
		echo "Exiting..."
		exit 0
	fi

	if [[ $var2 == '+' ]]; then
		echo "Result of expression '+': $(($var1 + $var3))"
	elif [[ $var2 == '-' ]]; then
		echo "Result of expression '-': $(($var1 - $var3))"
	elif [[ $var2 == '*' ]]; then
		echo "Result of expression '*': $(($var1 * $var3))"
	elif [[ $var2 == '/' ]]; then
		echo "Result of expression '/': $(($var1 / $var3))"
	else
		echo "Text data: $var1 $var2 $var3"
	fi

	read -p "Do you want to continue [Y/N]: " choise

	if [ $choise = "Y" ]; then
		continue
	else
		break
	fi
done
