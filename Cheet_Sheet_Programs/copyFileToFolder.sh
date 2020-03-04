#!/bin/bash -x
for files in `ls *.txt`
do
	foldername=`echo $files | awk -F . '{print $1}'`

	if [ -d $foldername ]
	then
		rm -r $foldername
	fi
	echo

	mkdir $foldername
	cp $files $foldername
	echo Directory Created With Foldername $foldername
	echo "& copied that file to Folder"
done
