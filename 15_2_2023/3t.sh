#!/bin/bash
path=$(pwd)
pathA=$path/abc;
pathB=$path/def;



cd $pathA
for i in $(ls -I Readme.txt);
do
	echo $i
	IFS=$'\n' 
	count=1
       	for j in $(cat $i)
	do 
		echo "$j"
	      	echo "...";
	       	#hex=$(echo $j|cut -f2);
		#echo $hex 
		#dec=$((16#$hex))
		#dec=$(sprintf("%d","0x"$hex))
	#	dec= echo "ibase=16; $hex"|bc
	#	echo $dec 
	#	sed -i "$count s/\t$hex\t/\t$dec\t/" $i
		#count=count+1;
#		let count++;
#		echo "count" $count;
	done
	IFS=	


	#IFS="\n"
	#for j in $(cat $i);
#	do
#	echo $j
#	echo "...."
#	done
done


