#!/bin/bash

set -x

log_folder=/home/ec2-user/Devops/Shell_Scripting/folder1

echo "$log_folder"

if [ ! -d "$log_folder" ]; then
   echo "$log_folder is not there"
   exit1 
fi

LOG_FILES_TO_DELETE=$(find /$log_folder -iname "*.txt" -mtime -1)

echo "file to delete $LOG_FILES_TO_DELETE"

sleep 5

if [ -z "$LOG_FILES_TO_DELETE" ]; then
   echo "no files to delete"
   exit 0
else
	for file in `echo $LOG_FILES_TO_DELETE`
        do
	    echo "file to delete $file"
	    sleep 5
	    rm -f "$file"
	    echo "$file deleted"
	done
fi
