#!/bin/bash
timestamp=$(date +%Y%m%d_%H%M%S)
log="/var/log/clean_share.log"
path="YOUR PATH"

find $path -name "*.txt"  -type f -mtime +3 -print -delete >> $log

echo -e "\nStart cleaning $(date +%Y_%m_%d_%H%M)" >> $log

START_TIME=$(date +%s)

END_TIME=$(date +%s)

ELAPSED_TIME=$(expr $END_TIME - $START_TIME)


echo "Stop cleaning -- $(date +%Y%m%d_%H%M)" >> $log
echo "Elapsed Time $(date -d 00:00:$ELAPSED_TIME +%Hh:%Mm:%Ss) "  >> $log
