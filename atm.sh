#!/bin/bash

DEPS=(curl jq)

for dep in ${DEPS[@]}; do
    if ! command -v $dep >/dev/null; then
        MISSING_DEPS+="$dep "
    fi
done

if [[ ${#MISSING_DEPS[@]} -ne 0 ]]; then
    echo "Missing packet(s): ${MISSING_DEPS[@]}"
    exit 1
fi

if [[ -z $1 ]];
then
    echo "Usage : $(basename $0) [IDENTIFIER]"
    exit 1
fi

IDENTIFIER=$1
EMAIL=$(curl -s https://archive.org/metadata/${IDENTIFIER}/metadata | jq -r .result.uploader)

if [[ $EMAIL == "null" ]]; then
    echo "\"${IDENTIFIER}\" is not a valid identifier"
    exit 1
elif [[ -z $EMAIL ]]; then
    echo "$(basename $0): Error"
    exit 1
else
    echo $EMAIL
    exit 0
fi
