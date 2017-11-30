#!/bin/sh
echo "New Users"
echo "New Users name:"
read fullname
echo "New Users username:"
read uname
	
	dscl . -create /Users/"$uname"
	dscl . -create /Users/"$uname" UserShell /bin/bash
	dscl . -create /Users/"$uname" RealName "$fullname"
	dscl . -create /Users/"$uname" UniqueID "510"
	dscl . -create /Users/"$uname" PrimaryGroupID "50"
	dscl . -create /Users/"$uname" NFSHomeDirectory /Users/"$uname"
	dscl . -passwd /Users/"$uname" "Pssw0rd#"
	
	dscl . append /Groups/admin GroupMembership "$uname"

echo "You will need to reboot for new user to gain admin rights"
echo "Would you like to reboot now?"
read answer
	if [ $answer = "y" | "Y" | "yes" ]
	then
		shutdown -r
	else
		exit
	fi
	