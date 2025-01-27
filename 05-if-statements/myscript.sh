#!/bin/bash

# mynum=300

# if [ ! $mynum -eq 200 ] # if condtion, -eq=equals
# ! not, -ne not equals, -gt greater than
# then
    # code block for met condition
    # echo "the condition is true."
# else
    # echo "the variable does not equal 200."
# fi # end of the if statement

# if [ $mynum -eq 300 ]
# then
#     echo "the variable does not equal 200."
# fi


# checks if a file exists in the same directory
# if [ -f ./myscript.sh ] # -f check for a file 
# then
#     echo "The file exists."
# else
#     echo "The file does not exist."
# fi


# which command checks if app or command is installed
# which htop

# check if command is available or install it
# then it installs it
command=htop
if command -v $command
# checks for existence of a command, -v 
then 
    echo "$command is available, lets run it..."
else 
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y $command
fi
$command

# eliminate any type of response, automate the task