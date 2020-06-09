#!/bin/bash

SecretNumber=42

    guessNumber()
{
    read -p "$1: "
while (( $REPLY < $2 || $REPLY > $3 )); do
    printError echo "The number you guessed must be between $2 and $3" 1 100
    read -p "$1: "
done
}

    echo "Shall we play a game ???"
while
    guessNumber "Type a number between 1 and 100" 1 100
do
if [[ $REPLY = $SecretNumber ]]; then
    echo
    echo -e "\033[32mWoW thats a pretty good guess, well done !!!\033[0m"
    echo
    exit 0

elif [[ $REPLY -lt $SecretNumber ]]; then
echo
echo -e "\033[31mSorry but its higher than that number !! Try Again\033[0m"
echo

else [[ $REPLY -gt $SecretNumber ]]
echo
echo -e "\033[34mSorry but its lower than that number !! Try Again\033[0m"
echo

fi
done