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
		echo "Fuck you,Please input the right choice!"
	;;
esac
