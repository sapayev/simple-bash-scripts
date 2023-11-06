#!/bin/bash

release_file=/etc/os-release
logfile=updater.log
errorlog=updater_errors.log

check_exit_status(){
if [ $? -ne 0 ]
then
	echo "An error, please see $errorlog"
fi
}

if grep -q "Arch" $release_file
then
	echo "It's Arch linux"
	sudo pacman -Syu 1>>$logfile 2>>$errorlog
	check_exit_status
else
	echo "It's not Arch linux."
fi


if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file  
then 
	sudo apt update 1>>$logfile 2>>$errorlog 
	check_exit_status
	sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
	check_exit_status
fi

