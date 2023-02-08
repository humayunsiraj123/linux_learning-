#!/bin/bash
path=$(find $PWD -type d -name test)$"/"
echo $path
echo "Enter your choice : 1 or 2"
read choice
pathA=$path$"abc/"
echo $pathA 
#ls $pathA
pathB=$path$"def/"
echo $pathB
#echo $pathB
#ls patchB

if [ $choice -eq 1 ];then
	cd $pathA
	for i in $(ls -I Readme.txt $pathA)
	do	#pwd
		#cd $i
		echo "-------------" $i
		#pwd
		#ls 
		#echo $i
		if [ -f $i ];then
		echo $i
		#cat $i
		for k in $i
			printf   'the value is "%#x" ' $k 
		
		fi
	#echo "............."
		#awk '{ print $2 }' $i
	done
fi

if [ $choice -eq 2 ];then
	for i in $(ls -I Readme.txt $pathB)
	do
		cat $i
	done
fi
