#!/bin/bash
# universal update script

release_file=/etc/os-release
# file on linux system with info on the OS

# if [ -d /etc/pacman.d ] # specific to arch
if grep -q "Arch" $release_file # -q quite mode
then
    # the host is based on arch, run pacman update command
    sudo pacman -Syu
fi

# if grep -q "Debian" $release_file
# then
#     # the host is based on debian
#     # Run the apt version of the command
#     sudo apt update
#     sudo apt dist-upgrade
# fi
# redundant code 

# if [ -d /etc/apt ] # specific to debian or ubuntu
if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
    # the host is based on Debian or Ubuntu,
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi

# always keep your system up to date