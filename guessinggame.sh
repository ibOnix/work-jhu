#!/bin/bash
# file: guessinggame.sh
# Author: Simón Palacios

times=0
answer=$(find . -maxdepth 1 -type f -name '[!.]*'| wc -l)

echo "What's your nickname?"
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
	if [[ $attempt =~ ^[0-9]+$ ]]
	then
		times=$(($times + 1))
		if [[ $attempt -eq $answer ]]
		then
			echo "You only have needed $times attempts... You are the One ; )"
			echo "Ready for more? Change script location."
			exit 1
		elif ([[ $attempt -gt $answer ]] && echo "Your guess was too high.") || echo "Your guess was too low."
		then
			echo "Targeting... almost there. Try again:"
		fi
	else
		echo "$name, we have a typo, try again:"
	fi
}

while [[ $attempt -ne $answer ]]
do
	check_answer
done