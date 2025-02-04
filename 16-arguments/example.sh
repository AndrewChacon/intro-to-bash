#!/bin/bash

# echo "You entered the argument: $1"
# ls -lh $1

lines=$(ls -lh $1 | wc -l)

if [ $# -ne 1 ] # $# represents the number of arguments passed to the script
then
    echo "The script requires one directory path as an argument."
    echo "Please try again"
    exit 1
fi

echo "You have $(($lines-1)) objects in the $1 directory."
