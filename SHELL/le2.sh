#THIS SCRIPT BELOW IS TO LIST DIRECTORY EXCEDING 1000 BYTES.
echo -n "Enter the number of bytes you want to search: "
read bit
find -size $bit
#script to accept the value of varriable.
echo -n "Enter your name:"
read name
echo -n "Enter name of a subject:"
read subject
echo Hello I am $name and I like studing $subject.
#script for calculating the age of user in years.
echo -n "Enter your birthdate"
read by
cy=`date|tr -s " "|cut -d " " -f 6`
age=`expr $cy - $by`
echo "You are $age years old as of today."
#script for marks
echo "enter the marks"
read no
if [ $no -gt 60 -a $no -le 100 ] 
then
echo "first class"
elif [ $no -le 60 -a $no -ge 55 ]
then
echo "secound class"
else 
echo "pass"
fi

