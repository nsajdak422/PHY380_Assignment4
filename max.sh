#!/bin/bash

read -p "Enter a number: " A
read -p "Enter another number: " B

if [ "$A" -gt "$B" ]; then
    echo "$A is greater than $B"
elif [ "$B" -gt "$A" ]; then
    echo "$B is greater than $A"
elif [ "$A" -eq "$B" ]; then
    echo "$A is equal to $B"
fi
