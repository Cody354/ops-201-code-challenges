#!/bin/bash

# Script Name:                  Ops Challenge - Arrays
# Author:                       Cody Blahnik
# Date of latest revision:      1/24/2024
# Purpose:                      Creats 4 directories adding names and .txt files.


# Write a script that:
# Creates four directories: dir1, dir2, dir3, dir4





# Put the names of the four directories in an array
#define array
directories=(./ops201lab ./ops201lab/dir1 ./ops201lab/dir2 ./ops201lab/dir3 ./ops201lab/dir4)



# Creat the directories using the paths we put into the array
mkdir ${directories[*]}

# References the array variable to create a new .txt file in each directory
dir "${directories[@]}"
touch "$dir/file.txt"






# Main



# End
