#!/bin/bash

logfile=job_results.log

/usr/bin/echo "the script ran at the following time: $(/usr/bin/date)" > $logfile

# using the fully qualified command
# crontab -e	edit crontab file in temp

# 30 1 * * 5 /usr/local/bin/script
# minutes hours day-of-month month day-of-week command

# is it possible to edit a crontab of a user?
# sudo crontab -u username -e
# practice more with cronjobs
