#!/bin/bash

#to identify disk usage and send email alert
set -x

DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=80
SCRIPT_NAME="basename $0"

while read -r line
do
   USAGE=$(echo "$line" |awk '{print $6}' | cut -d "%" -f1)
   FOLDER=$(echo "$line" | awk '{print $NF}')

   if [ $USAGE -ge $THRESHOLD ]; then
     MESSAGE+="$FOLDER disk usage is above threshold:$THRESHOLD%, current usage is:$USAGE%\n"
   fi
done <<< "$DISK_USAGE"

TIMESTAMP=$(date '+%F %H;%M;%S')
echo "message:$MESSAGE"

if [ -n "$MESSAGE" ]
then
#   echo -e "Disk usage Alert - $TIMESTAMP\n\n$MESSAGE" | mail -s "Disk Usage Alert" eshwarb.111@gmail.com
   echo -e "Disk usage Alert - $TIMESTAMP\n\n$MESSAGE"
else
   echo "Disk usage is under threshold"
   df -hT
fi

echo "$SCRIPT_NAME"

