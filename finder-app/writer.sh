#!/bin/sh
if [ $# -lt 2 ]
then
    echo "Usage: Param1: directory param2: write string"
    exit 1
else
    mkdir -p "$(dirname "$1")"
    echo $2 > $1
    if [ $? -eq 0 ]; then
        echo "success"
        exit 0
    else
        echo "failed to write to {$1}"
        exit 1
    fi
fi