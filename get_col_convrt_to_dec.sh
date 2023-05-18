 IFS=$'\n' ;for i in $(cat abc4.txt); do echo "$i";echo ".." ;name=$(echo $i|cut -d$'\t' -f2);echo "......";dec=$(echo $((16#$name)));echo "DEC"; echo $dec; done ;
 
 
 IFS=$'\n' ;for i in $(cat abc4.txt); do echo "$i";echo ".." ;name=$(echo $i|cut -d$'\t' -f2);echo "......";dec=$(echo $((16#$name)));
echo "DEC"; echo $dec; sed 's/\t$name\t/\t$dec\t/' abc4.txt;done ;
