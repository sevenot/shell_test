#!/bin/bash
#判断登录用户是否为root
tt=$(env | grep USER | cut -d "=" -f 2)

if [ "$tt" == root ];then
	echo "this is root "
fi
