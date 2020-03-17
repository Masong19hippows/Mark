#!/bin/bash
#
# This script asks the user what they want Mark to call them.
# Then places the username in Mark.sh
echo "This will be your username for Mark. You can change it anytime by executing this script again"
read -p 'Username: ' uservar
#
echo "Do you want $uservar to be your name"
read  -p 'Y or N: ' yorn

if [ $yorn = y ]
then

	sed -i -e 's/"Welcome.*,/"Welcome '$uservar',/g' Mark.sh
	echo "Username $uservar selected"
elif [ $yorn = n ]
then

	echo "No Username selected"
else

	echo "Invalid input"
fi
