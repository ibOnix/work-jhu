#!/usr/bin/env bash
# guessinggame.sh

answer=$(find . -maxdepth 1 -type f -name '[!.]*'| wc -l)
times=0

echo "Hello, what's your nickname?"
read name
echo "Welcome to The Guessing Game, $name. Do you want to know what it is about? (y / n)"
read response

if [[ $response =~ y ]]
then
	echo "After this, there's no going back..."
	echo "How many files are in the current directory?"
else
	echo "Seriously? You kill me... and the script too! You choose the blue pill."
	exit
fi
	
function check {
	read attempt
	times=$(($times + 1))
	if [[ $attempt -eq $answer ]]
	then
		echo "You only have needed $times attempts... You are the One ; )"
		echo "Ready for more? Change script location."

	elif [[ $attempt -gt $answer ]] && echo "Your guess $attempt was too high." || echo "Your guess $attempt was too low."
	then
		echo "Targeting... almost there. Try again."
	fi
}

while [[ $attempt -ne $answer ]]
do
	check
done