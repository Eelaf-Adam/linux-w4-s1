#!/bin/bash

#writting a script that manages a submissions directory and creates two files

read -p "Enter directory name: " dir

filename1=submission1.txt 
filename2=submission2.txt

#if directory exist say so

if [ -d "$dir" ]; then 
	echo "directory exist, creating the files"
	touch $dir/{$filename1,$filename2}

#if directory doesn't exist 

elif [ ! -d "$dir" ]; then
	echo "directory does not exist, creating a directory and the files"
	mkdir $dir
	touch $dir/{$filename1,$filename2}

#the file matches an existing one

elif [ -e "$dir" ]; then 
	echo "error! matches existing file"

else
       echo "That's it, nothing was created.."	
fi
