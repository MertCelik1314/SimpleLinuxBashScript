#!/bin/bash
#Script of simple file operations


while [[ true ]]; do

echo
echo "##########################"
echo

echo "[1] Create a file for a given filename and list the generated file in long format"
echo "[2] Delete a file for a given filename"
echo "[3] Copy a file content to another file"
echo "[4] List subdirectories of current directory recursively"
echo "[5] Generate the command that finds how many times the \"cat\" command has been used in your command history so far"
echo "[6] Generate the command that writes the file names starting with W in the active directory to the \"Files.txt\" file"
echo "[7] Check Updates"
echo "[8] Exit"


read -p "Select operation :" operation

case ${operation} in
	"1") read -p "Enter file name : " filename
	touch $filename
	echo "File is created"
	ls -l | grep $filename
	;;
	"2") read -p "Enter file name : " filename
	rm $filename
	;;
	"3") echo "Choose a file to copy"
	ls
	read -p "Enter the name of files: " file1 file2
	cp $file1 $file2
	;;
	"4") du -a 
	;;
	"5") history | grep -cw cat 
	;;
	"6") ls -d W* > Files.txt
	;;
	"7") read -p "Enter tool name : " toolname
	sudo apt update $toolname
	;;
	"8") break
	;;
esac


done
