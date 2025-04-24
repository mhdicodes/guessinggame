# Makefile for the Guessing Game project

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\nDate and Time of generation:" >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm -f README.md