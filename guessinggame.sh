#!/usr/bin/env bash
# File : guessinggame.sh

function guessinggame {
	actual=$(ls -a | wc -l)

	while true
	do
		echo "Guess the number of files in the current directory: "
		read guess
		
		if ! [[ $guess =~ ^[0-9]+$ ]]
		then
			echo "Invalid input. Please enter a positive number. "

		elif [[ $guess -ne $actual ]]
		then
			if [[ $guess -lt $actual ]]
			then
				echo "Your guess is too low. Try again. "
			else
				echo "Your guess is too high. Try again. "
			fi
		else
			echo "Congratulations! Your guess is correct. "
			break
		fi
	done  
} 

guessinggame
