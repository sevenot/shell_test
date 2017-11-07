#!/bin/bash
#判断docker是否正常运行
tt=$(ps aux | grep dockerd | grep -v grep )

if [[ -z $tt ]]
	then
		service docker restart 
		date >> ./docker_status.log
		echo "docker service restart!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> ./docker_status.log
	else
		date >> ./docker_status.log
		echo "docker service running." >> ./docker_status.log
fi

