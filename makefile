README.md: guessinggame.sh
        echo "# guessing-game-assign" > README.md
        echo "$$(date)" >> README.md
        wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
