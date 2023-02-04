#! /bin/bash

a="hell"
b="world"
c="${a} ${b}"

echo  a +  b =$c

path=$HOME
echo $path
echo  script  results  makes fiels in home 


cd $HOME

echo "its new filese" >homex.txt   "its home files" 
cat homex.txt
ls
 ln -s 1script.sh link4
 echo  "its from  link 2 and 1scirpt is called again " >>link2

cat  link4
echo " making chmod changes"
chmod 777 *

 
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


#!/bin/bash

<<LINUXHINT_MESSAGE

echo  -n  this but ois commting using << string  .....
string
LINUXHINT_MESSAGE

echo -e "hello \n  world  \t learning linux  \"SCRIPTINTG\"  2+3  = $((2+3))"
echo "New.txt files..... " >New.txt
cat ./New.txt
echo  "appedn in new file" >>New.txt
cat ./New.txt




#! /bin/bash

a="hell"
b="world"
c="${a} ${b}"

echo  a +  b =$c

path=$HOME
echo $path
echo  script  results  makes fiels in home 


cd $HOME

echo "its new filese" >homex.txt   "its home files" 
cat homex.txt
ls
 ln -s 1script.sh link4
 echo  "its from  link 2 and 1scirpt is called again " >>link2

cat  link4
echo " making chmod changes"
chmod 777 *

let a=5 b=5 c=a+b
echo $c
expr  $a + $b 
expr  $a - $b

echo " $a %$b =$(($a%$b))" 
t1="Hello \nhi"
t2="world  \nsad"
a1="nice..... "
t3="${t1} ${t2} ${a1}"
echo -e "t1 +t2= ${t3}"\*3


#! /bin/bash

a="hell"
b="world"
c="${a} ${b}"

echo  a +  b =$c

path=$HOME
echo $path
echo  script  results  makes fiels in home 


cd $HOME

echo "its new filese" >homex.txt   "its home files" 
cat homex.txt
ls
 ln -s 1script.sh link4
 echo  "its from  link 2 and 1scirpt is called again " >>link2

cat  link4
echo " making chmod changes"
chmod 777 *

let a=5 b=5 c=a+b
echo $c
expr  $a + $b 
expr  $a - $b

echo " $a %$b =$(($a%$b))" 
t1="Hello \nhi"
t2="world  \nsad"
a1="nice..... "
t3="${t1} ${t2} ${a1}"
echo -e "t1 +t2= ${t3}"\*3


vars=$(cat<<END
hello  i am  multiple line variable
tring to run  multi line 
END
)
echo $vars

cat<<END
the present wroking direcory is  :PWD
curret use r is  : $(whoami);
the lis of file  :
$ls 
$wc
END


#! /bin/bash

a="hell"
b="world"
c="${a} ${b}"

echo  a +  b =$c

path=$HOME
echo $path
echo  script  results  makes fiels in home 


cd $HOME

echo "its new filese" >homex.txt   "its home files" 
cat homex.txt
ls
 ln -s 1script.sh link4
 echo  "its from  link 2 and 1scirpt is called again " >>link2

cat  link4
echo " making chmod changes"
chmod 777 *

let a=5 b=5 c=a+b
echo $c
expr  $a + $b 
expr  $a - $b

echo " $a %$b =$(($a%$b))" 
t1="Hello \nhi"
t2="world  \nsad"
a1="nice..... "
t3="${t1} ${t2} ${a1}"
echo -e "t1 +t2= ${t3}"\*3


vars=$(cat<<END
hello  i am  multiple line variable
tring to run  multi line 
END
)
echo $vars

cat<<END
the present wroking direcory is  :PWD
curret use r is  : $(whoami);
the lis of file  :
$ls 
$wc
END

