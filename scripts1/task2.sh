#!/bin/bash
mkdir copied_files
pathc=$(find $(pwd) -type d -name 'copied_files')
echo $pathc
patht=$(pwd)$'/test'
path=$(pwd)
#pathb=$()
echo $patht
cd $patht
for i in $(ls)
do
	echo $i
	mkdir $pathc/$i
#	mkdir -p $pathc/$i
	cp -r  $i/ *.txt *.log  $pathc/$i/
	#echo "$pathc/$i/"|ls
	#echo "done with  $i"
done



