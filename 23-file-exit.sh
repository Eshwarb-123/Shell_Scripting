#!/bin/bash
set -x

file="/home/ec2-user/Devops/file.txt"

if [ -f $file ]; then
   echo "$file exist"
else
   echo "$file does not exist"
fi



