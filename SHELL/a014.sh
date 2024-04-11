#script to welcome the user.
usrname=`who | cut -d " " -f 1`
hour=`date +"%H"`
td=`date | tr -s ' ' | cut -d " " -f 3`
echo The current date is $td.
if [ $hour -ge 0 -a $hour -lt 12 ]
then
 echo "Good Morning $usrname, Welcome to `uname -a | cut -d " " -f 1` a great day."
elif [ $hour -ge 12 -a $hour -lt 18 ]
then
 echo "Good Afternoon $usrname, welcome to `uname -a | cut -d " " -f 1` don't be lazy ;)."
fi
 echo "Good Evening $usrname, Welcome to `uname -a | cut -d " " -f 1` go to bed early no need to be night owl."
echo -n "Please enter your name : "
read name
echo "Hello $name nice to meet you, you are currently logged in with  user `who | cut -d " " -f 1`."
choice=y
until [ $choice = n ]
do
echo "----------------------------------------------------------------------------------------------------"
echo "1: TO CREATE, DELETE, TO SEE THE PRESENT WORKING DIRECTORY."
echo "----------------------------------------------------------------------------------------------------"
echo "2: TO CREATE AND WRITE IN A FILE, DELETE, TO COPY 2 FILES IN ONE FILE OR TO COMPARE TWO."
echo "----------------------------------------------------------------------------------------------------"
echo "3: TO ADD, SUBTRACT, MULTIPLY, DIVIDE."
echo "----------------------------------------------------------------------------------------------------"
echo "4: TO COMPRESS A FILE."
echo "----------------------------------------------------------------------------------------------------"
echo "5: WILL LIST YOU THE AVIABLE SHELLS OR CAN SHOW DEFAULT SHELL."
echo "----------------------------------------------------------------------------------------------------"
echo "6: WILL SHOW YOU THAT HOW MUCH BIT IS YOUR OPERATING SYSTERM AND NAME OF YOUR OPPERATING SYSTERM."
echo "----------------------------------------------------------------------------------------------------"
echo "7: HAVE NO IDEA ABOUT ANY COMMANDS USED IN LINUX."
echo "----------------------------------------------------------------------------------------------------"
echo "8: WILL SHOW YOU THE FILE MODIFIED IN LAST 24/48 HOURS. "
echo "----------------------------------------------------------------------------------------------------"
echo "9: WILL CLOSE THIS SCRIPT. "
echo "----------------------------------------------------------------------------------------------------"
echo -n "ENTER YOUR CHOICE $name [From 1-9]: "
read choice
case $choice in

1)
#SCRIPT {1} TO CREATE, DELETE, TO SEE THE PRESENT WORKING DIRECTORY
choice=y
until [ $choice = n ]
do
echo "------------------------------------------------" 
echo "CHOSE ANY OPTION YOU WANT."
echo "------------------------------------------------"
echo "a: WILL CREATE A DIRECTORY."
echo "------------------------------------------------"
echo "b: TO DELETE A DIRECTORY."
echo "------------------------------------------------"
echo "c: TO SEE PRESENT WORKING DIRECTORY. "
echo "------------------------------------------------"
echo "d: EXIT THIS LOOP. "
echo "------------------------------------------------"
echo -n "ENTER YOUR CHOICE $name: "
read ch
case $ch in
# THIS FIRST OPTION WILL CREATE DIRECTORY.
a)
clear
echo -n "PLEASE ENTER A SUITABLE NAME FOR THE DIRECTORY $name: "
read dname
mkdir $dname 
echo "A DIRECTORY NAMED $dname IS CREATED."
;;

#THIS OPTION BELOW WILL REMOVE THE DIRECTORY YO WANT.
b)
clear
echo -n "PLEASE ENTER A DIRECTORY'S NAME YOU WANT TO REMOVE $name: "
read d 
rmdir $d
echo "THE DIRECTORY NAMED $d IS REMOVED."
;;

#THIS SCRIP IS TO SEE THE PRESENT WORKING DIRECTORY.
c)
clear
echo "YOU ARE WORKING IN `pwd`."
;;

#THIS SCRIPT IS BELOW TO EXIT THIS LOOP.
d)
exit
;;

*)
echo "INCORRECT CHOICE TRY AGAIN."
;;

esac
echo -n "DO YOU WANT TO CONTINUE? [y-YES,n-NO] : "
read choice
done
;;

2)
# THIS IS SCRIPT {2} FOR FILES CREATE, DELETE, TO COPY 2 FILES IN ONE FILE OR TO COMPARE TWO OR THREE FILES.
choice=y
until [ $choice = n ]
do
echo "-----------------------------------------"
echo "a: YOU WANT TO CREATE A FILE."
echo "-----------------------------------------"
echo "b: YOU WANT TO DELETE A FILE."
echo "-----------------------------------------"
echo "c: TO COPY 2 FILES IN ONE FILE."
echo "-----------------------------------------"
echo "d: TO  COMPARE TWO FILES."
echo "-----------------------------------------"
echo "e: YOU WANT TO QUIT."
echo "-----------------------------------------"
echo -n "ENTER YOUR CHOICE $name."
read ch 
case $ch in 

#THIS SCRIPT BELOW IS TO CREATE A FILE AND TO WRITE IN IT.
a) 
clear
echo "PLEASE NOTE THAT WHEN YOU FINISH WRITING IN THE FILE THEN PRESS CTRL+D"
echo -n "ENTER A SUITABLE NAME YOU WANT TO KEEP: "
read ff
cat>$ff
;;

#THIS SCRIPT BELOW IS TO DELETE A FILE.
b)
clear
echo -n "PLEASE ENTER THE FILE NAME WHICH YOU WANT TO DELETE: "
read fl
rm $fl
echo "THE FILE WITH NAME $fl IS REMOVED."
;;

#THIS SCRIPT BELOW IS TO COPY TWO FILES IN ONE.
c)
clear
echo -n "ENTER THE FIRST FILE NAME YOU WANT TO COPY: "
read file1
echo -n "ENTER THE SECOUND FILE NAME YOU WANT TO COPY: "
read file2
echo -n "ENTER THE FILE NAME IN WHICH YOU WANT TO COPY $file1 AND $file2: "
read file3
cat $file1 $file2 > $file3
echo "THE NEW FILE NAMED $file3 WITH THE TEXTS OF $file1 AND $file2."
;;

#THIS SCRIPT BELOW IS TO TWO FILES.
d)
clear
echo -n "ENTER THE FIRST FILE NAME : "
read f1
echo -n "ENTER THE SECOUND FILE NAME : "
read f2
fs1=`wc -c $f1 | cut -d " " -f 1`
fs2=`wc -c $f2 | cut -d " " -f 1`
echo SIZE OF $f1 = $fs1
echo SIZE OF $f2 = $fs2
if [ $fs1 -eq $fs2 ]
then 
echo "BOTH FILES $f1 AND $f2 ARE SAME IN SIZE."
elif [ $fs1 -gt $fs2 ]
then
echo "$f1 HAS MAXIMUM SIZE OF $fs1 BYTES."
else
echo "$f2 HAS MAXIMUM SIZE OF $fs2 BYTES."
fi
;;

#THE SCRIPT IS TO EXIT THE LOOP.
e)
exit
;;

*)
echo "INCORRECT CHOICE TRY AGAIN [a-e]."
;;

esac
echo -n "DO YOU WANT TO CONTINUE. [y-YES,n-NO]. "
read choice
done
;;

3)
#THIS SCRIPT BELOW IS TO DIVIDE, MULTPLY, SUBTRACT AND ADDITION. 
choice=y
until [ $choice = n ]
do
echo "-----------------------------------------"
echo "CHOSE AN OPTION FROM THIS FOUR."
echo "-----------------------------------------"
echo "a: YOU WANT TO DIVIDE TWO NUMBERS."
echo "-----------------------------------------"
echo "b: YOU WANT TO MULTPLY TWO NUMBERS."
echo "-----------------------------------------"
echo "c: YOU WANT TO ADD TWO NUMBERS."
echo "-----------------------------------------"
echo "d: YOU WANT TO SUBTRACT TWO NUMBERS."
echo "-----------------------------------------"
echo "e: EXIT"
echo "-----------------------------------------"
echo -n "ENETR YOUR CHOICE $name [a-e]."
read ch
case $ch in

#SCRIPT BELOW IS TO DIVIDE TWO NUMBERS.
a)
clear
echo -n "ENTER THE FIRST NUMBER: "
read n1
echo -n "ENTER THE SECOUND NUMBER: "
read n2
sum=`expr $n1 / $n2`
echo "THE DIVISION OF $n1 AND $n2 IS $sum"
;;

#SCRIPT BELOW IS TO MULTPLY TWO NUMBERS.
b)
clear
echo -n "ENTER THE FIRST NUMBER: "
read n1
echo -n "ENTER THE SECOUND NUMBER: "
read n2
sum=`expr $n1 \* $n2`
echo "THE MULTIPLACITION OF $n1 AND $n2 IS $sum"
;;

#SCRIPT BELOW IS TO ADD TWO NUMBERS.
c)
clear
echo -n "ENTER THE FIRST NUMBER: "
read n1
echo -n "ENTER THE SECOUND NUMBER: "
read n2
sum=`expr $n1 + $n2`
echo "THE ADDITION OF $n1 AND $n2 IS $sum"
;;

#SCRIPT BELOW IS TO SUBTRACT TWO NUMBERS.
d)
clear
echo -n "ENTER THE FIRST NUMBER: "
read n1
echo -n "ENTER THE SECOUND NUMBER: "
read n2
sum=`expr $n1 - $n2`
echo "THE SUBTRACTION OF $n1 AND $n2 IS $sum"
;;

#SCRIPT TO EXIT THE LOOP
e)
exit
;;

*)
echo "INCORRECT CHOICE TRY AGAIN [a-e]."
;;

esac
echo -n "DO YOU WANT TO CONTINUE. [y-YES,n-NO]. "
read choice
done
;;

4)
clear
#SCRIPT TO COMPREES A FILE. 

dat=`date +"%d_%m_%Y"`
bdir=backup_$dat
if [ ! -d $bdir ]
then 
mkdir $bdir
else 
echo "DIRECTORY WITH NAME $bdir ALREADY THERE."
exit 0 
fi 
echo -n "ENTER THE EXTENSION OF FILE TO BACKUP: "
read fextn
ctr=0
for i in `ls -1 *.$fextn`
do 
cp $i ./$bdir
ctr=`expr $ctr + 1`
done 
if [ $ctr -gt 0 ]
then 
tar -czf $bdir.tar $bdir
cd $bdir
rm -r *.* 
cd ..
rmdir $bdir 
echo "ALL FILES WITH EXTENSION .$fextn STORED IN $bdir.tar"
else 
rmdir $bdir 
echo "NO FILE WITH $fextn EXTENSION FOUND."
fi
;;

5)
#THIS SCRIPT BELOW IS TO WILL LIST YOU THE AVIABLE SHELLS OR CAN SHOW DEFAULT SHELL.

choice=y
until [ $choice = n ]
do
echo "----------------------------------------------------------------------------"
echo "CHOSE THE OPTION YOU PREFERE"
echo "----------------------------------------------------------------------------"
echo "a: YOU WANT TO SEE THE LIST OF SHELL THAT IS AVIABLE IN YOUR DEVICE."
echo "----------------------------------------------------------------------------"
echo "b: YOU WANT TO SEE THE DEFAULT SHELL YOU ARE USING."
echo "----------------------------------------------------------------------------"
echo "c: EXIT"
echo "----------------------------------------------------------------------------"
echo -n "ENTER YOUR CHOICE  [a-c]: "
read ch 
case $ch in 

#THIS SCRIPT BELOW IS TO SEE THE LIST OF AVIABLE SHELLS.
a)
clear
echo "LIST OF SHELL AVIABLE IN YOUE SYSTERM ARE :-"
cat /etc/shells
;;

#THIS SCRIPT BELOW IS TO SEE YOUR DEFAULT SHELL.
b)
clear
echo "YOUR DEFAULT SHELL IS `echo $SHELL`."
;;

#SCRIPT TO EXIT THE LOOP
c)
exit
;;

*)
echo "INCORRECT CHOICE TRY AGAIN [a-c]."
;;

esac
echo -n "DO YOU WANT TO CONTINUE. [y-YES,n-NO]. "
read choice
done
;;

6)
clear
#THIS SCRIPT BELOW IS FOR WILL SHOW YOU THAT HOW MUCH BIT IS YOUR OPERATING SYSTERM AND NAME OF YOUR OPPERATING SYSTERM.

echo "DEAR $name YOU ARE USING `uname -a | cut -d " " -f 12` AND THE OPERATING SYSTERM YOU ARE USING `uname -a | cut -d " " -f 1`"
;;

7)
clear
#THIS SCRIPT BELOW IS FOR THOSE PEOPLE WHO DONT KNOW ABOUT THE COMMAND.

echo -n "PLEASE ENTER THE COMMAND NAME YOU DON'T KNOW : "
read cmdd
echo "YOUR COMMAND $cmdd IS GIVEN BELOW.:-"
whatis $cmdd
;;

8)
#THIS SCRIPT BELOW IS TO SHOW YOU THE FILE MODIFIED IN LAST 24/48 HOURS.

choice=y
until [ $choice = n ]
do
echo "-------------------------------------------------------"
echo "CHOSE AN OPTION FROM THIS. "
echo "-------------------------------------------------------"
echo "a: TO SHOW MODIFIED FILE IN 24HRS."
echo "-------------------------------------------------------"
echo "b: TO SHOW MODIFIED FILE IN 48HRS."
echo "-------------------------------------------------------"
echo "c: EXIT"
echo "-------------------------------------------------------"
echo -n "ENTER YOUR CHOICE $name [a-c]: "
read cl
case $cl in

#THE SCRIPT BELOW IS FOR FILE MODIFIED IN 24HRS.
a)
clear
find . -mtime -1
;;

#THIS SCRIPT BELOW IS FOR FILE MODIFIED IN 48HRS.
b)
clear
find . -mtime +1
;;

#THIS SCRIPT IS TO EXIT THE LOOP.
c)
exit
;;

*)
echo "INCORRECT CHOICE TRY AGAIN [a-c]."
;;

esac
echo -n "DO YOU WANT TO CONTINUE. [y-YES,n-NO]. "
read choice
done
;;

9)
#THIS SCRIPT IS FOR CLOSING THE WHOLE SCRIPT. 
echo "BYE $name!"
exit
;;

*)
echo "INCORRECT CHOICE TRY AGAIN [1-9]."
;;

esac
echo -n "DO YOU WANT TO CONTINUE. [y-YES,n-NO] :) "
read choice
done




