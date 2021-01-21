#!/bin/bash -x


declare -a Fruits

Fruits[0]="Orange"
Fruits[1]="Apple"
Fruits[2]="Banana"

for i in ${Fruits[@]}
do
	echo $i
done


unset Fruits[2]

echo ${Fruits[@]}
