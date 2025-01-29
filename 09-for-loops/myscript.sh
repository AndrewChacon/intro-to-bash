#!/bin/bash

# iterates over the list of numbers given
# for current_number in 1 2 3 4 5 6 7 8 9 10
# for n in {1..10} # 1-10
# do
#     echo $n # print the num 
#     sleep 0.5 # wait for half a sec
# done

# echo "This is outside of the for loop."



# iterates through all log files inside a directory
for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file
    # create a zipped file for each file in directory
    
    # remove original file to make space
done
