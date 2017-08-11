#!/bin/bash
#判断docker是否正常运行
tt=$(ps aux | grep dockerd | grep -v grep )

if [[ -z $tt ]]
	then
		service docker restart 
		date >> /home/test/if4.log
		echo "docker service restart" >> /home/test/if4.log
	else
		date >> /home/test/if4.log
		echo "docker service running" >> /home/test/if4.log
fi

