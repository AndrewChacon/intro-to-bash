#!/bin/bash

# check if exactly two arguments were passed
if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1 
fi

# check if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please your distributions package manager to install it and try again."
    exit 2
fi

# capture the current date and store it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/current_date --delete --dry-run"
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log

# --dry-run	like demo mode
