#!/bin/bash

NUM1=100
NUM2=SUNIL

SUM=$(($NUM1+$NUM2))

echo "Sum is : $SUM"

#Array
FRUITS=("APPLE" "BANANA" "POMO")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}