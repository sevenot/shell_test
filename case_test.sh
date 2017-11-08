#!/bin/bash

read -p "Please input your choice : (yes or no)" -t 20 cho

case $cho in 
	"yes")
		echo "Your choice is yes!"
	;;
	"no")
		echo "Your choice is no!"
	;;
	*)
		echo -e "\033[31m Don't play game with me ,input the right choice! \033[0m"
	;;
esac
