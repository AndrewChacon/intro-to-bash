#!/bin/bash

# myvar=1

# while [ $myvar -le 10 ] # loop cond, while var is less than 10
# do # start of loop 
#     echo $myvar
#     myvar=$(( $myvar + 1)) # var = var +1
#     sleep 0.5 # wait half a sec 
# done # end of loop 



while [ -f ./testfile ]
do
    echo "As of $(date), the test file exists."
    sleep 1
done

echo "As of $(date), the test file has gone missing"
# program stops when file is deleted
# otherwise, infinite loop
