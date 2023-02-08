path=$(pwd)
echo $path
patha=$(ls $path)
for i in $patha
	do 
		if [ -d $i ];then

			echo $i
			echo '...........'
			for j in $(ls $i)
				do
				echo $j
				#awk '{print $2}' $j
				cat $j
			done
		fi
	done

