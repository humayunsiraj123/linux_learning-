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

