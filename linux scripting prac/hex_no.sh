#!/bin/bash
count=0;
echo "{">my.txt;
range=$1;
#for i in {0..$range};
for ((i=0 ; i<$range ; i++));
do
                if [[ $count -gt 19  &&  $count -lt 31 ]];
                then
                count=$count+1;
                continue;
                elif [[ $count -eq 31 ]];then
                        count=0;
                        continue;
                else
                echo -n "'h" >>my.txt;
                echo -e "obase =16 ; $i+$2"|bc >>my.txt;
                echo -n "," >>my.txt ;
                count=$count+1;
                fi;
        done;
        echo "}">>my.txt;
        
        
        
# #!/bin/bash
# count=0;
# echo "{">my.txt;
# range=$1;
# #for i in {0..$range};
# for ((i=0 ; i<$range ; i++));
# do
#                 if (( $count > 19  &&  $count <=31 ]];
#                 then
#                 if ((count == 31));then
#                 count=0;
#                 else 
#                 ((count++));
#                 fi;
#                 continue;
#                 else
#                 echo -n "'h" >>my.txt;
#                 echo -e "obase =16 ; $i+$2"|bc >>my.txt;
#                 echo -n "," >>my.txt ;
#                 count=$count+1;
#                 fi;
#         done;
#         echo "}">>my.txt;