#!/bin/bash
path=$(pwd)
pathA=$path/abc;
pathB=$path/def;

if [ $1 -eq 1 ];then
cd $pathA
	for i in $(ls -I Readme.txt);
	do
	echo $i
	echo "---"

	
	while read p;
	do 
		HEX=$(echo -e "$p"|cut -f2);
		dec=$(echo $((0x${HEX})));
	       	echo "HEX =$HEX   dec=$dec" 
		sed -i "s/\t$HEX\t/\t$dec\t/" $i ;
	done<$i
done

elif [ $1 -eq 2 ];then
	cd $pathB
		for i in $(ls -I Readme.txt);
		do
			echo $i
			
			while read p;
			do
				HEX=$(echo -e "$p"|cut -f2);
				DEC=$( echo $((0x${HEX})));
				sed -i "s/\t$HEX\t/\t$DEC\t/" $i;
			done<$i

		done

else
	echo "invalid input"
fi


