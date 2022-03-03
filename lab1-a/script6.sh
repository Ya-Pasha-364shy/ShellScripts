#!/bin/bash

whereis=$PWD

if [ $whereis = "/home/k1rch" ]; then
	echo "Script was be started from: $whereis"
	exit 0
else
	echo "Error!"
	exit 1
fi
