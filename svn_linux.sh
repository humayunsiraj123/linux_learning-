
#write coommand to comapre all the modified files from base to svn repo

svn st -q|grep M|cut -c9-|xargs   diffuse -n

#write coommand to copy   all the modified files from base to some spefici folder

svn st -q|grep M|cut -c9-|xargs i  cp "{}" ../project/copy_folder
# top delete all temp wlft files
svn st | grep wlft| cut -c9-|xargs -n1 rm 
