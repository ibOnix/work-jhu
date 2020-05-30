## Johns Hopkins University | The Unix Workbench | Guessing Game

all: README.md


README.md: guessinggame.sh

	touch README.md
		echo "## Johns Hopkins University | [The Unix Workbench](https://seankross.com/the-unix-workbench/) | Guessing Game." > README.md
		echo "*My modest solution to their proposal*." >> README.md
		echo "\n**The assignment**: bla bla bla" >> README.md
		echo "" >> README.md
		echo "\n**Do you know how many lines have my guessinggame.sh file?**: " >> README.md
		wc -l >> README.md
		echo "" >> README.md
		echo "\n**Last Update**: " >> README.md
		date -R -r README.md >> README.md		
