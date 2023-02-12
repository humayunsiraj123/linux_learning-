#!/bin/bash
mkdir copied_files
pathc=$(find $(pwd) -type d -name "copied_files")
path=$(pwd)$'/test/'
echo $pathc
echo $path
cd $path
for i in $(ls -I "-");
do
	if [ -d $i ];then
		mkdir  $pathc/$i
		echo $i
		cd $i
		dir
		cp -R *.txt  *.log  $pathc/$i/
		cd ..
		#ls $pathc/
fi 
done

