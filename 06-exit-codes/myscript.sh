#!/bin/bash

# echo $? -> 0
# $? contains status if previous command was successful or not
# use exit codes to help navigate errors and take action 

# package=ls

# sudo apt install $package >> package_install_results.log
# sudo apt remove package_name
# echo "The exit code for the package installed is: $?"

# if [ $? -eq 0 ]
# then
#     echo "The install of $package was successful"
#     echo "The new command is available here:"
#     which $package
# else
#     echo "$package failed to install." >> package_install_failure.log
# fi



# directory=/etc

# if [ -d $directory ]
# then
#     # echo $?
#     echo "The directory $directory exists."
# else
#     # echo $?
#     echo "The directory $directory doesn't exist."
# fi
# # the exit code is checking the success of the echo statement 
# echo "The exit code for this script run is $?"



# # echo "Hello World"
# sudo apt install notexist
# exit 0 # manually setting what the exit code is
# echo $? # print the forced exit code

directory=/etc

if [ -d $directory ]
then
    echo "The directory $directory exists."
    exit 0
else
    echo "The directory $directory doesn't exist."
    exit 1
fi

echo "The exit code for this script run is $?"
echo "You didnt see that statement"
echo "Or this one either"