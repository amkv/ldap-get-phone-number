#!/bin/bash
if [ $# -gt 0 ]
then
	RST=$(ldapsearch -Q uid=$1 | grep "mobile")
	if [ "$RST" != "" ]
	then
		echo $RST
	else
		echo "no matches"
	fi
else
	YESNO=0
	echo "input login name:"
	while [ $YESNO -eq 0 ]
   	do
		read NAME
		if [ "$NAME" != "" ]
		then
			RST=$(ldapsearch -Q uid=$NAME | grep "mobile")
			if [ "$RST" != "" ]
			then
				echo $RST
				YESNO=1
			else
				echo "no matches"
				echo "try to input another login name:"
			fi
		fi
	done
fi
