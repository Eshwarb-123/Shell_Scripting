#!/bin/bash

set -x


file="$1"
if [ ! -f "$file" ]
then
   echo "Usage: $0 file_name" > /dev/null
   exit 1
fi

wc -l < "$file"
