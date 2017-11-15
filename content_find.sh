#!/bin/bash
#这个脚本用作在当前目录下的所有普通文件中查找所需内容。
read -p "Please input the content what you want to find:" -t 50 con
echo -e "\033[34mThe content you want as follow:\033[0m"

fun_t()
{
cd $1
for i in $(ls)
	do
		if [ -f "$i" ]
			then
			echo "$(pwd)/$i"
		fi

#对文件夹进行递归操作，在遍历了文件夹后，返回到上级目录继续遍历实现递归。

		if [ -d "$i" ]
			then
			fun_t $i
			cd .. > /dev/null
		fi
	done
}

for i in $(fun_t $(pwd))
do
	zz1=$(cat $i | grep "$con")
	zz2=$(echo "$zz1" | sed -n '1p')
	if [ -n "$zz2" ]
		then
		echo -e "\033[31m $i \033[0m"
		echo "$zz1"
	fi
done
