#!/bin/bash

read -p "Please input the first number: " -t 30 num1
read -p "Please input the second number: " -t 30 num2
read -p "请输入运算符: " -t 30 op				

if [ -n "$num1" -a -n "$num2" -a -n "$op" ] 
	then
		n1=$( echo "$num1" | sed 's/[0-9]//g')  
		n2=$( echo "$num2" | sed 's/[0-9]//g')
		if [ -z "$n1" -a -z "$n2" ]
			then
				if [ "$op" == "+" ]
					then
						jg=$(($num1 + $num2))
				elif [ "$op" == "-" ]
					then
						jg=$(($num1 - $num2))
				elif [ "$op" == "*" ]
					then
						jg=$(($num1 * $num2))
				elif [ "$op" == "/" ]
					then 
						jg=$(($num1 / $num2))
				elif [ "$op" == "%" ]
					then
						jg=$(($num1 % $num2))
				else
					echo "请输入正确的运算符号！"
					exit 10
				fi
		else
			echo "请输入正确的数字！"
			exit 11
		fi
else
	echo "请输入内容！"
	exit 12
fi
echo "运算结果为：$num1$op$num2=$jg"
