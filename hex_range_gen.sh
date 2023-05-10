# to egenerate hex 50 no form 200  
for i in {0,50} ; do if [ $i -lt 16 ] ; echo -n "'h20"; else echo -n "'h2" ; fi ; -e "obase = 16 ; $i"|bc ; done  
