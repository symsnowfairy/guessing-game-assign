README.md: guessinggame.sh
	echo "# guessing-game-assign" > README.md
	echo "$$(date)" >> README.md
	echo "- The number of lines of code in gussinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
