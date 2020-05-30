## Johns Hopkins University | The Unix Workbench | Guessing Game

all: README.md clean


README.md: guessinggame.sh
	touch README.md
		echo "## Johns Hopkins University | [The Unix Workbench](https://seankross.com/the-unix-workbench/) | Guessing Game." > README.md
		echo "*My modest solution to their proposal*." >> README.md
		echo "\n**The assignment**: bla bla bla" >> README.md
		echo "\n**Number of lines of code in guessinggame.sh**: " >> README.md
		wc -l guessinggame.sh >> README.md
		echo "\n**Last Update**: " >> README.md
		date -R -r README.md >> README.md		

clean:
	rm README.md