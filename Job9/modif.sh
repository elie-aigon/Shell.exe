#!/bin/bash


modif=$(sudo find /home/elie/Shell.exe/Job9/Shell_Userlist.csv -mmin -10 | wc -l )

if [ $modif = 1 ] 
	then 
		echo "Changement parmis les users"
		./accessrights.sh

	else 	
		echo aucun changement
fi
