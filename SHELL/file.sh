#Script to find out hou many terminals a user has opened
clear
cnt=`who | cut -d " " -f 1 | grep -o $1 | wc -w`
echo "User $1 has opened $cnt terminals"  

