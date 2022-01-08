#!/usr/bin/env bash
# File: guessinggame.sh

function makeguess {
	if ! [[ "$1" =~ ^[0-9]+$ ]]
	then
		echo "You did not enter a non-negative number"
		echo "How many file are in the current directory? Your guess:"
	elif [[ $1 -lt $2 ]]
	then
		echo "Your answer is too low"
		echo "How many file are in the current directory? Your guess:"
	elif [[ $1 -gt $2 ]]
	then
		echo "Your answer is too high"
		echo "How many file are in the current directory? Your guess:"
	else
		echo "Congratulations, you are right!"
		flag=true
		break
	fi
}

x=$(ls | wc -l | egrep -o "[0-9+]")
flag=false

echo "How many file are in the current directory? Your guess:"
while [[ $flag -eq false ]]
do
	read response
	makeguess "$response" "$x"
done