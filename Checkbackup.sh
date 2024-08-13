#!/bin/bash

#We are checking if the "backup" directory exisits

if [ $"directory" ]; then
	echo "$directory" exists
fi

#If the directory doesn't exist, then create it

if [ ! -d "$directory" ]: then
	echo "$directory" does not exist
else 
	mkdir backup
	echo "$directory" backup created
