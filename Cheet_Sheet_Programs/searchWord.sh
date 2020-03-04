#!/bin/bash -x

for word in /var/log;
do
	grep `echo $word | awk -F. '{print $1}'`;
	if [[ $word == "systemd" ]]
	then
		echo "hi"
	fi	
done
