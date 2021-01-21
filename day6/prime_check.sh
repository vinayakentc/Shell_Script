#!/bin/bash -x


read -p "enter a number:" number
max_factor=$(echo $number | awk '{printf "%d", sqrt($1)}')
is_prime=1
for (( factor = 2; factor <= max_factor; factor++ ))
do
    if (( number % factor == 0 ))
    then
        is_prime=0
    break
    fi
done
if(( is_prime ))
then    
    echo "$number is prime"
else
    echo "$number is not prime"
fi

