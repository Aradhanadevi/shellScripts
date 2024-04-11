#Script to welcome the user in systerm. 
usrname=`who | cut -d " " -f 1`
hour=` date +"%H"`
if [ $hour -ge 0 -a $hour -lt 12 ]
then
 echo "Good Morning $usrname, Welcome to `uname -a | cut -d " " -f 1` have a great day."
elif [ $hour -ge 12 -a $hour -lt 18 ]
then
 echo "Good Afternoon $usrname, welcome to `uname -a | cut -d " " -f 1` dont be lazy ;)."
else
 echo "Good Evening $usrname, Welcome to `uname -a | cut -d " " -f 1` go to bed early no need to be night owl."
fi
