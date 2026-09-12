#!/bin/bash

set -x

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)
LOG_FOLDER=/var/log/shell-script/
LOG_FILE=/var/log/shell-script/$0.log

mkdir -p $LOG_FOLDER

if [ $USERID -ne 0 ]
then
  echo " $R please run script with root user access $N" | tee -a $LOG_FILE
  exit 1
fi


validate(){
   if [ $1 -ne 0 ]
   then 
      echo "$R $2 ...Failure $N" | tee -a $LOG_FILE
      exit 1
   else
      echo "$R $2 ...Successfull $N" | tee -a $LOG_FILE
   fi
}


for package in $@  # sh validate.sh httpd nmap podman
do
  dnf remove "$package" -y | tee -a "$LOG_FILE"
  validate $? "$package installation"
done
