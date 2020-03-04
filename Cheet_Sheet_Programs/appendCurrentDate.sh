#!/bin/bash -x
for files in `ls *.log.1`
do
        #removing names of files without extension
        filename=`echo $files | awk -F . '{print $1}'`
        now=$(date +"%d%m%Y")
	#rename file with new name
	cp $files $filename.$now.log.1
done
