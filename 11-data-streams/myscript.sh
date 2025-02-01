#!/bin/bash

# find /etc -type f
# find /etc -type f 2> /dev/null
# /dev/null is an area were data is deleted and wiped out
# were sending any output that results in a standard error to get snapped

# find /etc -type f > /dev/null
# find /etc -type f 1> /dev/null	both delete standard out

# find /etc -type f > file.txt		stores standard out to a txt file
# find /etc -type f &> file.txt		redirect standard out AND standard error

# find /etc -type f 1>find_results.txt 2>find_errors.txt

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file
then
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
	 echo "An error occurred, please check the $errorlog file."
    fi
fi

if grep -q "Ubuntu" $release_file || grep -q "debian" $release_file || grep -q "kali" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
	echo "An error occurred, please check the $errorlog file."
    fi
fi
