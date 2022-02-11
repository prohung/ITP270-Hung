#!/bin/bash

#Print a line that asks the user if it is raining 'Is it raining?'
echo "Is it raining[Y/N]?"

#Store the user input inside of the IS_RAIN variable
read IS_RAIN

#Start the if-else block to check if it is raining
if [ $IS_RAIN == "Y" ] || [ $IS_RAIN == "y" ]
then
	echo "Stay home."
elif [ $IS_RAIN == "N" ] || [ $IS_RAIN == "n" ]
then
	echo "Go outside!"
else
	echo "Invalid output! Please enter either Y or N"
fi
