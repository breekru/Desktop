#!/bin/sh
clear
echo "1 - Standard Build"
echo "2 - Creative Build (includes Creative Cloud)"
echo "3 - Dev Build"
echo "4 - Individual Installs"
echo "[Q]uit"
echo "[N]ew User"

read option

case "$option" in
"1" )
	echo "You have Chosen Standard Build"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/HomeBrew/install/master/install)"

	brew tap caskroom/cask

	brew cask --caskroom=/Applications

	brew cask install tn5250
	brew cask install java
	brew cask install google-chrome
	brew cask install adobe-acrobat-reader
	brew cask install zoomus
	brew cask install skype-for-business
	brew cask install onedrive
	brew cask install microsoft-office
	;;
"2" )
	echo "You have chosen Creative Build"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/HomeBrew/install/master/install)"

	brew tap caskroom/cask

	brew cask --caskroom=/Applications

	brew cask install tn5250
	brew cask install java
	brew cask install google-chrome
	brew cask install adobe-acrobat-reader
	brew cask install adobe-creative-cloud
	brew cask install zoomus
	brew cask install skype-for-business
	brew cask install onedrive
	brew cask install microsoft-office
	open -a "Creative Cloud Installer.app" /usr/local/Caskroom/adobe-creative-cloud/latest/
	;;
"3" )
	echo "You have chosen Dev Build"
	echo "Please type your first and last name no space"
	read you
	#curl -fsS 'https://raw.githubusercontent.com/legalshield/laptop/master/mac' | sh
	git config --global user.name "`id -F`"
	git config --global user.email "$you"@legalshieldcorp.com
	;;
"Q" | "q" )
	exit
	;;
"N" | "n" )
	sudo ./New_User.sh
	;;
"4" )
	clear
	echo "[A]crobat reader"
	echo "[C]hrome"
	echo "C[r]eative Cloud"
	echo "[J]ava"
	echo "[O]ffice"
	echo "One[d]rive"
	echo "[S]kype for business"
	echo "[T]N5250 - Mocha"
	echo "[Z]oom.us"
	
	echo "--------------------------"
	echo "[H]omeBrew"
	echo "Cas[k]"
	
	read II
	
	case "$II" in 
	"A" | "a" )
		brew cask install adobe-acrobat-reader
		;;
	"C" | "c" )
		brew cask install google-chrome
		;;
	"R" | "r" )
		brew cask install adobe-creative-cloud
		open -a "Creative Cloud Installer.app" /usr/local/Caskroom/adobe-creative-cloud/latest/
		;;
	"J" | "j" )
		brew cask install java
		;;
	"O" | "o" )
		brew cask install microsoft-office
		;;
	"D" | "d" )
		brew cask install onedrive
		;;
	"S" | "s" )
		brew cask install skype-for-business
		;;
	"T" | "t" )
		brew cask install tn5250
		;;
	"Z" | "z" )
		brew cask install zoomus
		;;
	"H" | "h" )
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/HomeBrew/install/master/install)"
		;;
	"K" | "k" )
		brew tap caskroom/cask
		;;
	esac
esac
./test.sh