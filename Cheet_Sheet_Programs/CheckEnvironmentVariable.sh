#!/bin/bash -x
`env | grep usersecret | awk '{print$0}'`
	if [[ $usersecret != null ]]
	then
		echo "Value is already set "
		echo $usersecret is the current value
	else
		set usersecret="dH34xJaa23"
		echo $usersecret
	fi

