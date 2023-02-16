#!/bin/bash
mkdir copied_files
echo "----------------"
copy=$(find $PWD  -type d -name copied_files) 
echo "----------------"
path=$($(pwd)$"/")
echo $path
for i in $(ls -I copied_files $path)
do
	if [ -d $i ];then
		
		mkdir -p $copy/$i
		cp -R $i/*.txt *.log $copy/$i/
		
	 	#echo $copy
	fi
done

