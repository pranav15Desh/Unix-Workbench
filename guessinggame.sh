#!/bin/sh

function guess {
echo "Enter number of files in directory"
read number
NumberOfFiles=$(($(ls -l | wc -l)-1))
}

guess

while [[ $number>0 ]]
do 
if [[ $number -gt $fileno ]]
then 
echo "Too high guessing"
elif [[ $number -lt $fileno ]]
then 
echo "Too low guessing"
else
echo "Congratulations !!! Hou have guessed correct number"
exit 0
fi
guess
done
