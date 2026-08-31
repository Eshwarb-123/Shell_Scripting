#!/bin/bash

#To calculate totial script run time

start_time=$(date +%s)

echo "script started at: $start_time"

sleep 15

end_time=$(date +%s)
total_time=$((end_time - start_time))


echo "time taken to run script:$total_time seconds"

