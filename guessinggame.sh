#!/usr/bin/env bash
# guessinggame.sh

answer=$(find . -maxdepth 1 -type f | wc -l)

echo "Hello, what's your name?"
read name
echo "Nice to meet you $name. Would you like to play riddles with me? (y / n)"
read response

[[ $response =~ y ]] && echo "Great! Go for it! Do you know how many files are in the current directory?" || echo "Seriously? You kill me... and the script too! May be next time."

function check {
	read attempt
	if [[ $attempt -eq $answer ]]
	then
		echo "It's magic! Or no file here? Anyway, congratulations."
		echo "If you want to play again, just take me to another place in your computer."

		elif [[ $attempt -gt $answer ]] && echo "Your guess $attempt was too high." || echo "Your guess $attempt was too low."
		then
		echo "Try again. The program will end when you hit the answer."
		fi
}

while [[ $attempt -ne $answer ]]
do
	check
done
