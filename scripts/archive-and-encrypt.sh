#!/bin/bash

package=htop

apt install $package >> package_installer_results.log

if [ $? -eq 0 ]
then
	echo "instalation of $package was successful."
	echo "The new command is available here: "
	which $package

else
	echo "$package failed to install."
fi

