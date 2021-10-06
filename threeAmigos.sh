#!/bin/bash

# This Bash Script takes 4 arguments
# Sums the first 3 arguments and then executes the subtractMachine.sh with the sum and $4

# Written by Evan

if [ $# -lt 4 ]
then 
	echo -e "4 arguments are needed to execute this script."
	echo -e "Exiting..."
	exit 1
elif [ $# -gt 4 ]
then
	echo -e "No need for more than 4 arguments to execute this script."
	echo -e "Exiting..."
	exit 2
elif [ $# -eq 4 ]
then
	sum=$(( $1+$2+$3 ))
	echo -e "The sum of the first three arguments is $sum"
	./subtractMachine.sh $sum $4
fi

