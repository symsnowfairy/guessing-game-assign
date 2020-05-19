README.md: guessinggame.sh
	echo "# guessing-game-assign" > README.md
	echo "$$(date)" >> README.md
	echo "- The number of lines of code in guessinggame.sh:" >> README.md
	egrep -c . guessinggame.sh >> README.md
