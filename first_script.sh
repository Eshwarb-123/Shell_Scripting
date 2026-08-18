#!/bin/bash
# writing my first shell script
echo "hello world , welcome to devops learning"
name=eshwar
if [ $name = "eshwar" ]; then
  echo "given name is valid"
else
  echo "given name is invalid"
fi