#!/bin/bash

printError()
{
    echo -e "\033[31mERROR:\033[0m $1"

}

getNumber()
{
read -p "$1: "
while (( $REPLY < $2 || $REPLY > $3 )); do
read -p "$1: "
done
}
echo
echo -e "\033[1;33m<<<<<<<<<<<<     This is the start of the script     >>>>>>>>>>\033[0m"
echo
getNumber "Please type a number between 1 and 10" 1 10
echo -e "\033[1;35mThanks\033[0m"
echo
getNumber "Please type a number between 50 and 100" 50 100
echo -e "\033[1;35mThanks\033[0m"
echo
