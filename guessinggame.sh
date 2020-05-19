echo "How many files are there in the current directory? Please enter a guess number:"
read number

function numberdir {
echo $(ls -1 |wc -l)
}

while [[ $number -ne $(numberdir) ]]
do
 if [[ $number -gt $(numberdir) ]]
 then	
	echo "The number is too high. Please enter a lower number:"
	read number	 
 fi 
 if [[ $number -lt $(numberdir) ]]
 then
	echo "The number is too low. Please enter a higher number:"
	read number
 fi 
done

echo "Congratulations!You entered the right number!"
