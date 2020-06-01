#!/bin/bash
# file: guessinggame.sh
# Author: Simón Palacios

# Variables
TIMES=0
ANSWER=$(find . -maxdepth 1 -type f -name '[!.]*'| wc -l)

echo "What's your code name?"
read name
echo "Welcome to The Guessing Game, $name. Do you want to know what it is about? (y/n)"
read response

if [[ $response =~ ^[y|Y]$ ]]
then
	echo "After this, there's no going back..."
	echo "How many files are in the current directory?"
else
	echo "You take the blue pill and the story ends."
	exit 0
fi
	
function check_answer {
	read attempt
	TIMES=$(($TIMES + 1))
	if [[ $attempt =~ ^[0-9]+$ ]]
	then
		if [[ $attempt -eq $ANSWER ]]
		then
			echo "You only have needed $TIMES attempts... You are the One ; )"
			echo "Ready for more? Change script location."
			exit 1
		elif ([[ $attempt -gt $ANSWER ]] && echo "Your guess was too high.") || echo "Your guess was too low."
		then
			echo "Targeting... almost there. Try again:"
		fi
	else
		echo "$name, we have a typo, try again:"
	fi
}

while [[ $attempt -ne $ANSWER ]]
do
	check_answer
done