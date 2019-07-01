#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 from_date[yyyymmdd] to_date[yyyymmdd]"
    exit 1
fi
    
LAST_DAY=`date -d "-1 days" +"%Y%m%d"`
start_day=$1
end_day=$2

timestamp_start=`date -d "$start_day" +%s`
timestamp_end=`date -d "$end_day" +%s`
echo $timestamp_start
echo $timestamp_end

timestamp_cur=$timestamp_start
while [ $timestamp_cur -le $timestamp_end ]
do
    #date_str=`date -d @$timestamp_start "+%Y%m%d%H"`   #not suport
    #date -d '1970-01-01 UTC 1455724800 seconds' +"%Y%m%d%H"    #ok
    date_arg="1970-01-01 UTC ""$timestamp_cur"" seconds"
    date_str=`date -d "$date_arg" "+%Y%m%d"`
    echo $date_str
    timestamp_cur=`expr $((timestamp_cur)) + 3600 \* 24`
    #sleep 60s
done







