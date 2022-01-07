while [ 1 ]
do
	echo "enter password"
	stty -echo
	read checkpassword
	stty echo

if [ "$checkpassword" == "Siddeswari" ]
then 
	echo password is correct
	break;
else
	echo $checkpassword  is wrong password 
	echo try again
fi
done
