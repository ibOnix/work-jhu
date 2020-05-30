## Johns Hopkings University | The Unix Workbench | Guessing Game

## Variables

last-update = $(date -R -r README.md)
lines = $(wc -l guessinggame.sh)

README.md:
	touch README.md
		echo "## Johns Hopkings University | The Unix Workbench | Guessing Game." > README.md
		echo "## The make file was run:  $last-update" > README.md
		echo "## The guessinggame.sh file contains the following number of lines: $lines" > README.md
		
