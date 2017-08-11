#!/bin/bash
#判断根分区使用率
tt=&(df -h | grep vda1 | awk '{print $5}' | cut -d "%" -f 1)
if [[ $tt -le 10 ]];then
	echo "根分区使用过低"
fi

