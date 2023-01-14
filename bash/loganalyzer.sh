#!/bin/bash

LOG_FILE="$1"

clear
echo "1) From which ip were the most requests?"
cat $LOG_FILE | awk '{ print $1 ; }' | sort | uniq -c | sort -nr | head -n 1
echo "2) What is the most requested page?"
cat access.log | awk '$7 !~ /mod_status|favico|crossdomain|alive.txt/ { print $7 }' | sort | uniq -c | sort -rn | head -n 1
echo "3) How many requests were there from each ip (Top 10)"
cat $LOG_FILE | awk '{ print $1 ; }' | sort | uniq -c | sort -nr | head -n 10
echo "4) What non-existent pages were clients referred to (Top 10)?"
cat $LOG_FILE | awk '$9 ~ /404/ { print $7 }' | sort | uniq -c | sort -rn | head -n 10
echo "5) What time did site get the most requests?"
cat $LOG_FILE |awk -F\" '{print $1}' | awk -F\[ '{print $2}' | awk -F\: '{print $1,$2}' | sort | uniq -c | sort -rn | head -n 24
echo "6) What search bots have accessed the site? (UA + IP) (Top 10)"
cat $LOG_FILE | awk -F\" '$6 ~ /[Bb]ot/ { print $6} ' | sort | uniq -c | sort -rn | head -n 10


