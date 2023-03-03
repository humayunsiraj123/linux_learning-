#!/bin/bash
path=$(pwd)
echo $path
pathf= $path$"/"
ls $pathf 

for i in $(ls $pathf)
do	
	if [ -d $i ]; then	 	
	   	
		cd $i
	
		echo "this directory contains following files " >Readme.txt
		#ls -I Readme.txt ./ >> Readme.txt 
		for x in $(ls -I Readme.txt)
			do
				wc -l $x >> Readme.txt 

				echo "....."	
			done

		#ls -I Readme.txt |wc >> Readme.txt
		#wc Readme.txt >>Readme.txt
		cat Readme.txt
	   	cd ..
		#echo $pathc
	fi
	#ls $i/*/ >>readx.txt 
	#ls $i/*/ >>Readme.txt| wc Readme.txt >>Readme.txt
done



