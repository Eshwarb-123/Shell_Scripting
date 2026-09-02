#!/bin/bash

set -x

USERID=$(id -u)
LOG_FOLDER=/var/log/shell-script/
LOG_FILE=/var/log/shell-script/$0.log

mkdir -p $LOG_FOLDER

if [ $USERID -ne 0 ]
then
  echo "please run script with root user access" | tee -a $LOG_FILE
  exit 1
fi


validate(){
   if [ $1 -ne 0 ]
   then 
      echo "$2 ...Failure" | tee -a $LOG_FILE
      exit 1
   else
      echo "$2 ...Successfull" | tee -a $LOG_FILE
   fi
}


for package in $@  # sh validate.sh httpd nmap podman
do
  dnf install "$package" -y | tee -a "$LOG_FILE"
  validate $? "$package installation"
done
