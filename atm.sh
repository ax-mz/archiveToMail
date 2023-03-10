#!/bin/bash

if [ -z $1 ];
then
    echo "Usage : $(basename $0) [IDENTIFIER]"
    exit 1
else
    ID=$1
    EMAIL=$(curl -s https://archive.org/metadata/$ID/metadata | jq -r .result.uploader)
    if [ $EMAIL == "null" ];
    then
        echo "\"$ID\" is not a valid identifier"
        exit 1
    elif [ -z $EMAIL ];
    then
        echo "$(basename $0): Error"
        exit 1
    else
        echo $EMAIL
        exit 0
    fi
fi
