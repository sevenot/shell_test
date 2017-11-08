#!/bin/bash
sum=0
i=0

until [[ i -gt 100 ]]
	do
		sum=$(($sum + $i))
		i=$(($i + 1))
	done
echo $sum
