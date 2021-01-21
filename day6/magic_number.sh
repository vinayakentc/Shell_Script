#!/bin/bash -x


echo "think of a number n between 1 and 100"
lower=1
upper=100
guessed=0

search_space_size=$(( upper - lower -1 ))

#logx to the base 2 approximately equal to 4 times the logx to the base 10
max_iterations=$(echo $search_space_size | awk '{printf "%d", 4 * log($1)}')
echo $max_iterations
for(( i = 1; i <= max_iterations; i++ ))
do
    magic_number=$(( (lower + upper) / 2 ))
    echo "press"
    echo "      1 if n is less than $magic_number"
    echo "      2 if n is equal to $magic_number"
    echo "      3 if n is greather than $magic_number"
    read option

    if(( option == 1 ))
    then
        upper=$(( magic_number - 1 ))
    elif (( option == 2 ))
    then
        guessed=1
        echo "your guessed number is $magic_number"
        break
    elif (( option == 3 ))
    then
        lower=$(( magic_number + 1 )) 
    else
        echo "please enter either 1 or 2 or 3"
    fi
done
if((guessed==0))
then    
    echo "your guessed number is out of range or you selected the wrong option"
fi
