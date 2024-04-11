#Script to welcome the user in systerm.
echo -n "Please enter your name : "
read name
echo "Hello $name nice to meet you, you are currently logged in with  user `who | cut -d " " -f 1`."
choice=y
until [ $choice = n ]
do
echo "You have to chose any apopariate options. "
echo "--------------------------------------------------------------"
echo "a: WILL HELP YOU TO DELETE ZERO SIZED FILE."
echo "--------------------------------------------------------------"
echo "b: WILL COMPARE YOUR TWO FILES."
echo "--------------------------------------------------------------"
echo "c: WILL SHOW YOU THE FILE MODIFIED IN LAST 24/48 HOURS."
echo "--------------------------------------------------------------"
echo "d: WILL LIST YOU THE AVIABLE SHELLS OR CAN SHOW DEFAULT SHELL."
echo "--------------------------------------------------------------"
echo "e: WILL SHOW YOU THAT HOW MUCH BIT IS YOUR OPERATING SYSTERM AND NAME OF YOUR OPPERATING SYSTERM."
echo "--------------------------------------------------------------"
echo "f: WILL TAKE YOU TO EXIT."
echo "--------------------------------------------------------------"
echo " "
echo " "
echo -n "Please enter your choice $name [a-f]: "
read c

case $c in
 
a)
#Script to delete zero sized file.
echo -n "Enter directory name : "
read dname
if [ ! -d $dname ]
then
echo Directory $dname does not exist.
else
ctr=0
for i in `find "$dname/" -type f -size 0c`
do
rm $i
echo File $i" : deleted"
ctr=`expr $ctr + 1`
done
if [ $ctr -gt 0 ] 
then
echo "$ctr zero sized files have been deleted."
else
echo "No zero sized files present in directory."
fi
fi
;;

b)
#Script to compare two files.
echo -n "Enter the first file name : "
read f1
echo -n "Enter the secund file name : "
read f2
fs1=`wc -c $f1 | cut -d " " -f 1`
fs2=`wc -c $f2 | cut -d " " -f 1`
echo Size of $f1 = $fs1
echo Size of $f2 = $fs2
if [ $fs1 -eq $fs2 ]
then 
echo "Both files $f1 and $f2 are same in size."
elif [ $fs1 -gt $fs2 ]
then
echo "$f1 has maximum size of $fs1 bytes."
else
echo "$f2 has maximum size of $fs2 bytes."
fi
;;

c)
#Script will show you the file modified in 24/48 hours.
choice=y
until [ $choice = n ]
do
echo "chose an option from this two. "
echo "-------------------------------------------------------"
echo "x: To show files modified in 24hrs."
echo "-------------------------------------------------------"
echo "y: To show files modified in 48hrs."
echo "-------------------------------------------------------"
echo -n "Enter your choice $name [x or y]: "
read cl
case $cl in
x)
find . -mtime -1
;;
y)
find . -mtime +1
;;
*)
echo "Incorrect choice try again."
;;
esac
echo -n "do you want to continue? [y - n] : "
read choice 
done
;;

d)
#Script to show your default SHELL or aviable SHELLS.
choice=y
until [ $choice = n ]
do
echo "-------------------------------------------------------------"
echo "Chose an option from this two. "
echo "-------------------------------------------------------------"
echo "a: Will show the default shell."
echo "-------------------------------------------------------------"
echo "b: Will show list of shells aviable on the systerm."
echo "-------------------------------------------------------------"
echo -n "Enter your choice $name [a or b]: "
read cho
case $cho in
a)
echo "Dear $name your default Shell is `echo $SHELL`."
;;

b)
echo "$name your list of aviable shells on the syster are given bellow:-"
cat /etc/shells
;;

*)
echo "Incorrect choice try again from [a-b]"
;;
esac
echo -n "Do you want to continue? [y - n]: "
read choice
done
;;

e)
#Script to let you know how much bit is your operatint systerm and which operating systerm you are using.
echo "Dear $name you are using `uname -a | cut -d " " -f 12` and the operatin systerm you are using is `uname -a | cut -d " " -f 1`"
;;

f)
#Script will take you to the exit.
exit
;;

*)
echo "Incorrect choice try again [a-f]"
;;

esac
echo -n "Do you want to continue? [y-yes,n-no] : "
read choice
done
