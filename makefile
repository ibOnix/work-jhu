## Johns Hopkings University | The Unix Workbench | Guessing Game

README.md:
	touch README.md
	echo "## Johns Hopkings University | The Unix Workbench | Guessing Game." > README.md
	echo "## The make file was run:" > README.md
		$(date -R -r README.md)			
	echo "## The guessinggame.sh file contains the following number of lines:" > README.md
		wc -l guessinggame.sh
