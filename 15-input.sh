#!/bin/bash

#Redirect input through file


read -p "Enter your name:" name < name.txt

echo "$name"


