#!/bin/bash

# echo $? -> 0
# $? contains status if previous command was successful or not
# use exit codes to help navigate errors and take action 

package=ls

sudo apt install $package >> package_install_results.log
# sudo apt remove package_name
# echo "The exit code for the package installed is: $?"

if [ $? -eq 0 ]
then
    echo "The install of $package was successful"
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install." >> package_install_failure.log
fi