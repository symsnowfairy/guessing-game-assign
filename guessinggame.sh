echo "How many files including hidden files are there in the current directory? Please enter a guess number:"

numberfile=$(ls -1a | wc -l)-2

read number

function checkinteger {
check=0
while ! [[ $number =~ ^[0-9]+$ ]]
do
	echo "Please enter a integer number:"
	read number
	let check=1
done
}

function guessing {
if [[ $number -gt $numberfile ]]
then
	echo "The number is too high. Please enter a lower number:"
	read number
	checkinteger
fi
if [[ $number -lt $numberfile ]]
then
	echo "The number is too low. Please enter a higher number:"
	read number
	checkinteger
fi
}

checkinteger

while [[ $number -ne $numberfile ]]
do 
	guessing
done


if [[ $number -eq $numberfile ]]
then
	echo "Congratulations!You entered the right number!"
fi
