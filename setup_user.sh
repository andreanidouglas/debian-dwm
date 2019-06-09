#!/bin/sh


create_user(){

	useradd -m -s /bin/bash $username
	$USER_HOME=/home/$username

	mkdir -p $USER_HOME/.config
	mkdir -p $USER_HOME/.local/bin

	cp bashrc.base $USER_HOME/.bashrc
	cp xinitrc.base $USER_HOME/.xinitrc
}

while getopts ":u:" opt; do
	case $opt in
		u)
			echo "creating user" $OPTARG
			username=$OPTARG
			create_user
			;;
		:)
			echo option -u mandatory username
			;;
	esac
done



