#!/bin/bash 
for userid in ` awk -F: '{print $1,$3}' /etc/passwd`
do
	echo $userid
	if [[ $3 -ge 1000 ]]
	then
		echo `awk -F ':' ' {print "Valid User" :"$1","$3"}'  /etc/passwd` | chown
	fi
done
