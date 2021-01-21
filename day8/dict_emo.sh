#!/bin/bash -x

declare -A Sounds

Sounds[dog]="bark"
Sounds[cow]="moo"
Sounds[bird]="tweet"
Sounds[worf]="howl"

echo ${Sounds[@]}

 
echo "dog sounds" ${Sounds[dog]}


echo "Animals" ${!Sounds[@]}

echo "length of dict" ${#Sounds[@]}

for i in ${!Sounds[@]}
do 
	echo $i ${Sounds[$i]}

done
