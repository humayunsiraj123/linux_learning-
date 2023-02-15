#!/bin/bash
path=$(pwd)
pathA=$(find $(pwd) -type d -name 'abc')
pathB=$(find $(pwd) -type d -name 'def')
echo $path
echo $pathA
echo $pathB
ls $path 
cd $pathA
for i in $( ls -I Readme.txt):
do 
echo $i
while read p ;
do
	echo  "$p"
#$(echo $p |sed -n 's/${p:5:4}/$((16#${p:5:4}))/')
	#sed -i 's/${p:5:4}/$((16#${p:5:4}))/'	$i
	#echo $p | sed 's/${p:5:4}/$((16#${p:5:4}}))/' $i 
	#cat $i						
done<$i

	#if [ -d $i ];then
		#echo $i
		#cd $i
		#dir 
		#for j in $(ls);
		#do
#			$j
		#done

	#fi
done
