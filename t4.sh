#!/bin/bash
path=$(pwd)
#pathA= find $(pwd) -type d -name "abc"
#pathB= find $(pwd) -type d -name "def"
pathA=$path/abc
pathB=$path/def

echo " path = "$path
echo " path = "$pathA
echo " path = "$pathB
if [ $1 -eq 1 ];then
cd $pathA

for i in $(ls);
do 
	#echo $i
	#echo "..."
	name=$(echo $i|sed 's/abc/Humayun/')
	#echo $name
       	mv $i $name
	
done
ls
fi
if [ $1 -eq 2 ];then
	cd $pathB
	for i in $(ls);
	do
		echo $i
		echo "...."
		name=$(echo $i|sed 's/def/Sheikh/')
		echo $name 
		mv $i $name
	done
	ls
fi


path=$PWD;
pathA=$path/abc;
if [ $1 -eq 1 ]
then
cd $pathA;
for i in $(ls );
do 
name=$(echo $i |sed 's/abc/humayun/');
mv $i name;
done
