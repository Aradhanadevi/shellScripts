# script for comparing files.#1
echo -n "Enter a file name: "
read f1
echo -n "Enter the secound file name: "
read f2
if cmp $f1 $f2
then
echo "$f1 and $f2 is same at both places"
else
echo "both $f1 and $f2 are different"
fi

#script for creating dir with appro message.#2
echo -n "Enter directory name : "
read dirn
if [ -d $dirn -o -f $dirn ]
then
echo "A file or directory with name $dirn already exists."

fi
mkdir $dirn
echo "Directory with name $dirn created."

#script to display total number of lines in a file.#3
clear
echo -n  "Enter a file name: "
read fname
echo "There are `cat $fname  | wc -l `lines in a file $fname"
 
# Script 8:Script to add two numbers.#4
echo -n "Enter first number:"
read n1
echo -n "Enter secound number:"
read n2
sum=`expr $n1 / $n2`
echo "The division of $n1 and $n2 is $sum"

echo -n "Enter the first number: "
read no1
echo -n "Enter the secound number: "
read no2
S=`expr $no1 + $no2`
echo "The addition of $no1 and $no2 is $S"

#script to find out how many processes a user is running.#5
clear
echo -n "Enter username: "
read usname
cnt=`ps -ef | cut -d " " -f 1 | grep -o $usname | wc -w`
echo "User $usname is running $cnt processes."   


#Script to find out hou many terminals a user has opened.#6
clear
cnt=`who | cut -d " " -f 1 | grep -o $1 | wc -w`
echo "User $1 has opened $cnt terminals"  


#Script to creat a directory with apporiate message.#7
echo -n "Enter directory name:"
read mydir
if  [ -d $mydir -o -f $mydir ]  
then
echo "A file name or directory with the name $mydir alerady exist."

fi
mkdir $mydir
echo "directory with name $mydir created sucessfully:"


# script to compare files.#8
echo -n "Enter a file name:"
read fname
if cmp ./$fname ./backup/$fname
then
 echo "$fname is same at both places."
else
 echo "Both $fname are differant."
fi   


#Script to see whether user has created more than specified files in a month.#9
cnt=`ls -l | grep -c [-]"$1"`
echo -n "Enter the number of files:"
read nfile
if test $cnt -gt $nfile
then
 echo "You have created more than $nfile files in the month of $1"
else
 echo "You have not created more than $nfile files in the month of $1"
cnt=`ls -l | grep -c [-]"$1"`
echo -n "Enter the number of files:"
read nfile
if test $cnt -gt $nfile
then
 echo "You have created more than $nfile files in the month of $1"
else
 echo "You have not created more than $nfile files in the month of $1"
fi


#Script to check file size.#10
echo -n "Enter a File name:"
read fname
if [ -s $fname -a -w $fname ]
then
 echo "$fname has size greater than 0 and user has write permission on it."
else
 echo "$fname has size 0 or user does not have write permission on it."
fi


#script to find the file with maximum size.#11

echo -n "Enter name of first file: "
read fn1
echo -n "Enter name of secound file: "
read fn2
echo -n "Enter name of third file: "
read fn3
fsize1=`wc -c $fn1 | cut -d " " -f 1`
fsize2=`wc -c $fn2 | cut -d " " -f 1`
fsize3=`wc -c $fn3 | cut -d " " -f 1`
echo Size of $fn1 = $fsize1
echo Size of $fn2 = $fsize2
echo Size of $fn3 = $fsize3
if [ $fsize1 -eq $fsize2 -a $fsize1 -eq $fsize3 ]
then 
echo "All files have same size"
elif [ $fsize1 -gt $fsize2 -a $fsize1 -gt $fsize3 ]
then 
  echo "$fn1 has maximum size."
elif [ $fsize2 -gt $fsize1 -a $fsize2 -gt $fsize3 ]
then 
 echo "$fn2 has maximum size."
else
 echo "$fn3 has maximum size."
fi 

#script to perform various file and directory operations.#12
echo "1 - Display Current Dir "
echo "2 - Make Dir "
echo "3 - Copy A File "
echo "4 - Rename A File "
echo "5 - Delete A File "
echo "0 - Exit "
echo -n "Enter your choice [0-5] : "
read choice 
case $choice in 

1)
 echo $PWD

 ;;

2)
 echo -n "Enter name of the directory to be created: "
read dname
if [ -d $dname ]
then
 echo "Directory with the name $dname already exists."
exit 0
 else 
mkdir $dname
echo "Directory $dname created sucessfully."
fi

;;

3)
echo -n "Enter source file name : "
read sfile
echo -n "Enter destination file name : "
read dfile
cp $sfile $dfile

;;

4)
echo -n "Enter old file name : "
read oldf 
echo -n "Enter new file name : "
read newf
mv $oldf $newf

;;

5) 
echo -n "Enter file name to delete : "
read fname
rm $fname

;;

0)
exit 0

;;

*) 
echo "Incorrect choice exiting script."
esac


#Script to delete zero sized files.#13
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



#Script to backup and compress desired file from current location.#14

dat=`date +"%d_%m_%Y"`
bdir=backup_$dat
if [ ! -d $bdir ]
then 
mkdir $bdir
else 
echo "Directory with name $bdir already exist."
exit 0 
fi 
echo -n "Enter the extension of the files to backup: "
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
echo "All files with extension .$fextn stored in $bdir.tar"
else 
rmdir $bdir 
echo "no files with the extension found."
fi



#Script to perform operations till users decides to exit.#15
choice=y
until [ $choice = n ]
do 


echo " Choose an option from menu given below. "

echo "a: List of files and directories in a current directory."
echo "b: Display current working directory"
echo "c: Display current date and time"
echo "d: Serching a word from file"
echo "e: Exit"
echo "  "
echo -n "Enter your choice [a-e]: "
read ch 
case $ch in 
a)
ls -1

;;

b)
echo "You are working in `pwd`."

;;

c)

echo "Current date and time is `date`."

;;

d)
echo -n "Enter the word to be searched: "
read word
echo -n "Enter the file name from which the word is to be searched: "
read file
if [ -f $file ]
then
grep $word $file
else
echo -n "File with name $file does not exist."
fi

;;

e)
exit

;;

*)
echo "Incorrect choice, try again.."

;;

esac
echo -n "Do you want to continue? [y-yes,n-no] : "
read choice

done



