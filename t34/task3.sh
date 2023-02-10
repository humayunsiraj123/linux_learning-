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
		while read p;
		do
			#echo $p
			#if [ "${p:5:4}" -eq 0000 ];then 
				#echo "first line"
				#sed -i "1 s/0000/0/2" $i
			#else 	
				echo cut -f2 $p 	
				#sed -i  " s/${p:5:4}/$((16#${p:5:4}))/1" $i

			#fi	
			#foo="$p"
			#echo $foo
			#echo $((16#${foo:5:4}))
		done<$i
		

		#cat $i
		#for k in $i
			#do
			#	echo "............"
		#	echo "${k}" 
			#done
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
