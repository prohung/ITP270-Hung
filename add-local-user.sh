#!/bin/bash
#
#Conditional to make sure that the script is being executed by root user

if [ "${UID}" -eq 0 ]
then

#Print a message that asks the user for the username
	read -p "Enter username: " username

#Print a message that asks the user for the Full name
	read -p "Enter full name: " full_name

#Print a message that asks the user for the password
	read -p "Enter password: " password

#Check if the username has already existed in the system
	echo $username, $full_name, $password

#Create the username and print USERNAME, FULLNAME
	useradd -c "${full_name}" "${username}"

	if [ $? -ne 0 ]
	then
		echo "Password could not be set"
		exit 1
	fi

	usermod -p "${password}" "${username}"

	echo "Username: "
	echo "$username"
	echo "Full name: "
	echo "$full_name: "
	echo "Hostname: "
	echo "$HOSTNAME"

#Throw an exception if the user is not root
else
	"Please run the program as root."
	exit 1
fi
