#!/bin/bash
path=$(pwd)
fpath=$path
for i in $(ls $fpath)
	do
	if [ -d $i ];then
	cd $i
	echo "this folder contains following files" >1Read.txt
	for j in $(ls -I Read.txt)
	do
		wc $j >>1Read.txt
	done
	cd ..
	fi
done


#i!/bin/bash
mkdir -p ../copied__files
path=$(pwd)
cpp=$(find $PWD/.. -type d -name copied__files)
echo $path
echo $cpp

for i in $(ls $path)
do
	if [ -d $i ];then
		mkdir $cpp/$i
		cp -R /*.txt *.log $cpp/$i/
	fi 
done

