#!/bin/bash

read -p "请输入一个文件名（绝对路径）: " -t 30 file

if [ -z "$file" ]
	then
		echo "请输入正确的文件名！"
		exit 1

elif [ ! -e "$file" ]
	then
		echo "你输入的文件名不存在！"
		exit 2

elif [ -d "$file" ]
	then
		echo "你输入的文件是一个目录！"
elif [ -f "$file" ]
	then
		echo "你输入的文件是一个普通文件！"
else
	echo "你输入的文件是一个其他文件！"
fi



