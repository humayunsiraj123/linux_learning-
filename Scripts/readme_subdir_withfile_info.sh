#!/bin/bash
path=$PWD;
ls ;
#cd $path;
echo $path;
path1=$path$"/abc";
echo
#cd abc;
count=0;
for i in $(ls -I t1.sh ) ;do
        cd $i;
        #echo "this folder contains files :">Readme.txt;
        echo "........... $i ";
        echo "this folder_contains files  :">Readme.txt;
        for j in $(ls -I Readme.txt);do
         echo -e $((count++));

        #echo -n "$count  ";
        echo $j;
        wc $j>>Readme.txt
done;
cd ..;

done
