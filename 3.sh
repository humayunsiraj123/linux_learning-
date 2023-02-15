#!/bin/bash

for i in $(ls -I 3.sh)
do 
	echo $i
	echo "..."
	while read p;
	do
		echo "$p"
		echo ">>>"
		hex=$(echo "$p"|cut -f2);
		#dec= echo "obase=10; ibase=16; $hex"| bc
		decy= printf "%d" $((16#$hex))	
		#decx= echo $(( 16#$hex))i
		
		echo "HEX = $hex" "Dec = $decy" # $decx"
	done<$i
	#echo "... ";
	#IFS=$'\n'
#	file=$(cat $i)
#	count =1;
#	#for j in $file;
#	do
#		echo $j
#		echo "____"
#	done
#	IFS=

done
	

