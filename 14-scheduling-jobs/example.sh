#!/bin/bash

logfile=job_results.log

echo "the script ran at the following time: $(date)" > $logfile

# at 17:52 -f ./example.sh
# Scheduled the script example to execute at 5:52pm on Fed 3rd
# atq allows you to view that jobs that are planned to be executed
# atrm # - remove a job with its given job ID
