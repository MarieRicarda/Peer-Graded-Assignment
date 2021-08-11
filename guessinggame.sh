#!/usr/bin/env bash

#a program called guessinggame.sh that will continuously ask the user to guess the # of files in the current directory until they guess the correct #.

count=$(ls -1 | wc -l)

function correct_guess {
	if [[ $1 -lt $2 ]]
	then
		echo "2 low!"
	elif [[ $1 -gt $2 ]]
	then
		echo "2 hi!"
	else
		echo ""
		echo "Congrates!U guessed correctly!"
	fi
}

while [[ $count -ne $guess ]]
do
	read -p "Can u guess how many files r in the dir.?" guess
	# echo "U entered: $guess"
	echo $(correct_guess $guess $count)
	echo ""
done
