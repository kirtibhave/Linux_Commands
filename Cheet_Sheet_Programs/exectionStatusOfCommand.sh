#!/bin/bash -x
read -p "enter value:" value

if [[ $value == hello || $value == ls ]]
then
	$value
	echo command execute successful
else
	echo command not execute 
fi


