#!/bin/bash -x

read -p "enter a number:" number
factorial=1
for (( i = 1; i <= number; i++ ))
do
    (( factorial *= i ))
done
echo "The factorial of $number is $factorial"
