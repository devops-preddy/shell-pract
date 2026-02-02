#!/bin/bash

Number=$1

 # -gt -> greater than
 # -lt -> less than
 # -eq -> equal
 # -nt -> not equal

if[$Number -gt 20]; then
    echo "Given number: $NUMBER is greater than 20"
elif [$Number -eq 20]; then
    echo "Given number: $NUMBER is equal than 20"
else
    echo "Given number: $NUMBER is less than 20"
fi