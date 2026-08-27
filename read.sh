#!/bin/bash

read -p "Enter your name: " name
echo "Hello $name"

#read input without displaying it

read -s -p "Enter your password: " password
echo "$name , your password is $password"

# read multiple values

read -p "Enter you name and age: " name age
echo "name is: $name "
echo "age is: $age"
