
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

