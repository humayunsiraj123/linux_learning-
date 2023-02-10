path=$(pwd)
echo $path
patha=$(ls -I Scripts $path)
for i in $path
	do 
		if [ -d $i ];then

			echo $i
			cd $i
			ls

			echo '...........'
			#cd $i/
			for j in $(ls $i)
			do	cd $j
				echo $j
				ls 
				#cd ..	
			done
			#for j in $(l:s )
				#do
				#cd $j
			#	echo $j
			#	ls
				#echo $j
				#for k in $(ls $j)
				#do	echo "value of k"
				#	echo $k
				#	mv $k ./$(echo $k|sed 's/abc/humayun/')
				#done
				#echo "..."
				#ls

				#mv "abc*" ./humayun*
				#grep '[[alpha:]][:number]]*'  $j|echo
				#awk '{print $2}' $j
				#cat $j
			#done
			#:wq
			#cd ..
			#echo $i
			#sed -i 's/abc*/Humayun*/g' $i
		fi
	done

