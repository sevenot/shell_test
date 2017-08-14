#!/bin/bash

read -p "Please input a number " -t 30 tt
declare -i tt

if [[ tt -gt 10 ]]
	then
		echo "大于10"
elif [[  tt -eq 10 ]]
	then 
		echo "等于10"
else
		echo "小于10"
fi
