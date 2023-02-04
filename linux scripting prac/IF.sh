 
#!/bin/bash
echo enter  a
read a
echo enter b
read b 
echo enter c
read c
if [[ $a -gt $b ]] && [[ $c -lt  $a ]]
then
echo "$a is  greater the $b and %c "
fi
if [[ $a  -eq $b ]] || [[ $a -eq $b ]] || [[ $b  -eq $c ]]
then
	echo "a =bor b=c or c=a"
	if [ $a -lt $b ] 
		then
			echo " b  is  C"
	fi
else
echo "$a is less than $b"
fi
echo "enter first string"
read x
echo "enter second stirng"
read y

if [ $x != $y ]
then
	echo string are not equal
fi
if [ $x == $y ]
then
	echo string are equal
fi 
q=20
w=30
e=40

if (( $w >= $q )) && (( $w <= $e))
then 
	echo "the no is between"
else
	echo "not in range"
fi
read filex
if [ -f '$filex' ]
then 
	echo "files exists "
else
	echo "files doest not exits"
	fi
rad=$dir                           
if [ -f '$filex' ]                   
then                                 
	echo "files exists "         	

else                                 
	echo "files doest not exits"
fi

