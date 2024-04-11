#Script to show use of function. 
file_today(){
cur_date=`date +'%Y-%m-%d'`
cnt=`ls -l tr | grep "$cur_date" | wc -l`
echo "Current date is : "$cur_date
echo "No. of files created today" : $cnt
}
modified_today(){
if [ -f "$1" ]
then
stat -c %y "$1"
else
echo ""$1" does not exist."
fi
}
choice=y
until [ $choice = n ]
do 
 
echo " Chose an option from menu given below  "
echo " "
echo "a: List of files created today."
echo "b: Display last file modification date."
echo "c: Exit"
echo " " 
echo -n "Enter your choice [a-c]: "
read ch
case $ch in

a)
file_today
;;

b)
echo -n "Enter a file name: "
read fname
modified_today $fname
;;

c)
exit
;;

*)
echo "Hey dumb only 3 choices are given ,try again stupid -__- ."
;;

esac 
echo -n "Do you want to continue? [y/n]: "
read choice 
done
