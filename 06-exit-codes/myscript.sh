#!/bin/bash

# echo $? -> 0
# $? contains status if previous command was successful or not
# use exit codes to help navigate errors and take action 

package=notexist

sudo apt install $package
echo "The exit code for the package installed is: $?"