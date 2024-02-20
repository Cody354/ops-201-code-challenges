#!/bin/bash

# Script Name:                  test
# Author:                       Cody Blahnik
# Date of latest revision:      02/19/2024
# Objectives
# Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.
# Declaration of variables

# # Array to check File or Directory
Check=("file.txt" "Directory")

# Function that is going to search for the File or Directory
File_Directory_search() {
    # File/Directory user is looking 
    search_File_Directory="$1"

    # For the loop to go over the File/Directory
    for item in "${Check[@]}"; do
        if [ -e "$item" ]; then
            if [ -d "$item" ]; then
                echo "Directory '$item' already exists!"
            else
                echo "File '$item' already exists!"
            fi
            return 0
        fi
    done
     return 1 # If a function returns 1, it indicates File or Directory doesn't exist.
}

# Main

# While Loop
while true; do
    # Ask the user to search for File or Directory
    read -p "What File or Directory are you searching for today? (Type 'done' to exit.) " Fi_Di_to_check

    # Check if the user is done with their search.
    if [ "$Fi_Di_to_check" == "done" ]; then
        break
    fi

    # Check if the File or Directory is on the system - call the function we built
    if File_Directory_search "$Fi_Di_to_check"; then
        :
    else
        # If the File or Directory is not on the list, ask the user if they want to add it
        read -p "'$Fi_Di_to_check' is not on your system, do you want to create it? (yes/no) " create_it
        if [ "$create_it" == "yes" ]; then
            # This adds the new File or Directory to our Check array
            Check+=("$Fi_Di_to_check")
            echo "'$Fi_Di_to_check' was added to your list."
        else
            echo "'$Fi_Di_to_check' was not added to your list."
        fi
    fi
done





# End