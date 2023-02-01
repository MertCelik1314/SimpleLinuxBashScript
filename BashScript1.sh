#!/bin/bash

#Script for create stairs made of increasing number
#Like:
#1
#23
#456
#78910

counterLine=0
counterElement=0
counterNumber=0

read -p "Please enter e number :" targetNumber

while [[ $counterNumber -lt $targetNumber ]]; do
	
	while [[ $counterElement -lt $counterLine ]]; do

		counterElement=$(( $counterElement + 1 ))
		counterNumber=$(( $counterNumber + 1 ))
		
		if [[ $counterNumber -le $targetNumber ]]; then
			echo -n $counterNumber
		fi
		
	done

	echo
	counterLine=$(( $counterLine + 1 ))
	counterElement=0
done

