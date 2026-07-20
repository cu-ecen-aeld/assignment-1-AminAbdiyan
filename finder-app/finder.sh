#!/bin/sh
if [ $# -lt 2 ]
then
    echo "Usage: Param1: directory param2: find string"
    exit 1
else
    cd $1
    if [ $? -eq 0 ]; then
        countlines=$(grep -r $2 * | wc -l)
        countfiles=$(find . -type f | wc -l)
        echo "The number of files are ${countfiles} and the number of matching lines are ${countlines}"
        exit 0
    else
        echo "filesdir does not represent a directory on the filesystem"
        exit 1
    fi
fi