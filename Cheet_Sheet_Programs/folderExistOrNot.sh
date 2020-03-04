#!/bin/bash -x

for folderName in `ls -F /`;
do
   #checking for already existing directory started";
   if [ -d $folderName ];
   then  
      echo "folder exist already"
      break
   else
      mkdir $folderName;
      echo "folder created with name $folderName"
      break
   fi
done

