#!/bin/bash

#Display data and time format
START_TIME=$(date)

echo "execution time :$START_TIME"

sleep 10

END_TIME=$(date)
echo "execution end time:$END_TIME"

#Display time in full numeric format

START_TIME=$(date +%s)

echo "Script executed at: $START_TIME"

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script executed in: $TOTAL_TIME seconds"
