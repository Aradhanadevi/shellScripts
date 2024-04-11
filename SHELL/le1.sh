#Script to compare files and delete same files.
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
rm $f2
echo "Both files $f1 and $f2 are same so secound file is deleted."
fi
