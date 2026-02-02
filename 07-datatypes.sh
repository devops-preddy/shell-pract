#!/bin/bash

Num1=100
Num2=Sravan

SUM=$(Num1+Num2)

echo "Sum is: $SUM"

# Array
FRUITS=("Apple" "Banana" "Pomo")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"
