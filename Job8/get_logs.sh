#!/bin/bash

date=$(date +%d-%m-%Y-%H-%M)

grep -c "session opened" /var/log/auth.log > /home/elie/Shell.exe/Job8/number_connection-$date 
tar -cvzf number_connection-$date.tar.gz number_connection-$date
cp number_connection-$date.tar.gz Backup/
rm /home/elie/Shell.exe/Job8/number_connection-$date

# crontab paramètre: 
#*/5 * * * * sh /home/elie/Shell.exe/Job8/get_logs.sh

