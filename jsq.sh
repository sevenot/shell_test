#!/bin/bash
#这是一个计算器！
read -p "请输入第一个数字：" -t 30 num1
read -p "请输入第二个数字：" -t 30 num2
read -p "请输入运算符号(支持 + - * / %)：" -t 30 op

if [ -n "$num1" -a -n "$num2" -a -n "$op" ]
	then
		n1=$(echo $num1 | sed 's/[0-9]//g')
		n2=$(echo $num2 | sed 's/[0-9]//g')
		if [ -z "$n1" -a -z "$n2" ]
			then
				case $op in 
					"+")
						R=$(($num1 + $num2))
					;;
					"-")
						R=$(($num1 - $num2))
					;;
					"*")
						R=$(($num1 * $num2))
					;;
					"/")
						R=$(($num1 / $num2))
					;;
					"%")
						R=$(($num1 % $num2))
					 ;;
					*)
						echo "请输入正确的运算符！"
						exit 10
					;;
				esac
		else
			echo "请输入正确的数字！"
			exit 11
		fi
else
		echo "请输入正确的内容！"
		exit 12
fi

echo "$num1$op$num2=$R"
