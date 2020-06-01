#!/bin/bash
# file: guessinggame.sh

times=0
answer=$(find . -maxdepth 1 -type f -name | wc -l)

echo "What's your nickname?"
read name
echo -e "Welcome to The Guessing Game, $name.\nDo you want to know what it is about? (y/n)"
read response

if [[ $response =~ ^[y|Y]$ ]]
then
	echo -e "After this, there's no going back...\nHow many files are in the current directory?"
else
	echo "You take the blue pill and the story ends."
	exit 0
fi

function check_answer {
local answer_ok=0
	read attempt
	if [[ $attempt =~ ^[0-9]+$ ]]
	then
		times=$(($times + 1))
		if [[ $attempt -eq $answer ]]
		then
			echo -e "You have only needed $times attempts... You are the One ; )\nReady for more? Change script location."
			answer_ok=1
		elif ([[ $attempt -gt $answer ]])
		then
			echo "Your guess was too high. Try again:"
		else
        	echo "Your guess was too low. Try again:"
        fi
	else
		echo "$name, we have a typo. Try again:"
	fi
return $answer_ok
}

until [[ $resp_ok -eq 1 ]]
do
	check_answer
    resp_ok=$?
done