#!/bin/bash

if [ -z $1 ];
then
	echo "Usage : ./atm.sh [IDENTIFIER]"
	exit 1
else
	RESULT=$(curl -s https://archive.org/metadata/$1/metadata | jq -r .result.uploader)
	if [ ! -z $RESULT ];
	then
		echo $RESULT
		exit 0
	else
		echo "atm : Error"
		exit 1
	fi
fi
