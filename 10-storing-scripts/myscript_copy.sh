#!/bin/bash

release_file=/etc/os-release
if grep -q "Arch" $release_file
then
    sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep -q "debian" $release_file || grep -q "kali" $release_file
then
    sudo apt update
    sudo apt dist-upgrade
fi


# cp myscript.sh myscript_copy.sh
# sudo mv myscript.sh /usr/local/bin/update
# sudo chown root:root /usr/local/bin/update

# /usr/local/bin/update - path of the update script
# PATH - shell uses this to find a script or binary to run
