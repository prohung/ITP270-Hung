#!/bin/bash
#
#Creates 2 users
#for loop that runs the script twice
for i in {0..1}
do

	#Asks user for the username
	read -p "Please enter your username: " username

	#Asks users for the password, also starts the error checking loop
	while read -p "Please enter your password: " password
	do
		len=`echo $password | wc -c`    #len variable stores the word count of the userpassword
		#echo $len
		if [ $len -le 8 ]; then 	#less than 8 because word count command also counts the space before the input
			echo "Password has to be at least 8 characters long, please try again."
		else
			break
		fi
	done


	#Create the user using the useradd command
	useradd "${username}"

	#Password for the user
	usermod -p "${password}" "${username}"

	#Print the username and password
	echo "The username is $username"
	echo "The user password is $password"
done
