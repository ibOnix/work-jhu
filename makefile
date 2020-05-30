## Johns Hopkins University | The Unix Workbench | Guessing Game

## Variables

last-update = $(date -R -r README.md)
lines = $(wc -l guessinggame.sh)


all: README.md


README.md: 
	touch README.md
		echo "## Johns Hopkins University | [The Unix Workbench](https://seankross.com/the-unix-workbench/) | Guessing Game." > README.md
		echo "*My modest solution to their proposal*." >> README.md
		echo "\n**The assigment**: bla bla bla" >> README.md
		echo "" >> README.md
		echo "\n**Do you know how many lines have the guessinggame.sh file?**: " >> README.md
		$lines >> README.md
		echo "" >> README.md
		echo -n "\n**Last update**: " >> README.md
		$last-update >> README.md		



