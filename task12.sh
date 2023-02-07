#!/bin/bash
path=$(pwd)
echo $path
pathf= $path$"/"
ls $pathf 
echo ".........."
for i in $(ls $pathf)
do	
	#ls $i/ 
	#echo "-----------" 
	if [ -d $i ]; then	 	
	   	#pathc=
		cd $i
		#cat <<okx> Readme.txt 
		#"This directory contains following files :"
		#okx
		echo "this directory contains follwing files " >Readme.txt
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



#!/bin/bash
mkdir copied_files
echo "----------------"
copy=$(find $PWD  -type d -name copied_files) 
echo "----------------"
path=$($(pwd)$"/")
echo $path
for i in $(ls $path)
do
	if [ -d $i ];then
		mkdir -p $copy/$i
		cp -p -R $i/*.txt *.log $copy/$i/
		
	 	#echo $copy
	fi
done

