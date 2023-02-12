#!/bin/bash
path=$(pwd)
path1=$path$"/test"
ls $path1
cd $path1
for i in $(ls);do
	#echo $i
	if [ -d $i ];
	then
		cd $i
		echo "this files contains following files size "|cat>Readme.txt
		for j in $(ls -I Readme.txt);do
		#echo $j
		wc $j >>Readme.txt
		done
		cat Readme.txt
		cd ..
	fi
done

