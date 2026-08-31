#!/bin/bash

#Installing packages

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "please run the script with root access"
  exit 1
fi

#Install nginx

dnf install nginx -y

if [ $? -ne 0 ]
then
   echo "nginx installation failed"
   exit 1
else
   echo "nginx installation succeeded"
fi




