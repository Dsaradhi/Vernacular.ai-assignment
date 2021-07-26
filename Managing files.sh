#!/bin/bash

#defining variable
TIMESTAMP='date +%F'

#printing the ack message 
echo "Auto Generate Log files"

#logical part, Find the files with 40 days back and execute delete and generate log files
find /home/ubuntu/audios/ -name 'audio*' -mmin +2880 -0 bash -c ' echo "{} - " date -r {} rm -rf {} ' \; | xargs > deleted-files-"$TIMESTAMP.log"

#printing the ack message
echo "Log Generated Successfully"