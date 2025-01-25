#!/bin/bash

mynum=300

if [ $mynum -eq 200 ] # if condtion, -eq=equals
then
    # code block for met condition
    echo "the condition is true."
fi # end of the if statement

if [ $mynum -eq 300 ]
then
    echo "the variable does not equal 200."
fi