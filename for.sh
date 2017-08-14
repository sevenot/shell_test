#!/bin/bash

for x in $(ls /home/test)
	do
		echo $x
	done
sum=0

for((i=1;i<=100;i=i+1))
	do
		sum=$(($sum+$i))
	done

echo "从1加到100等于：$sum" 
