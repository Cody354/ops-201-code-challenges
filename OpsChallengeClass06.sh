#!/bin/bash

# Script Name:                  test
# Author:                       Cody Blahnik
# Date of latest revision:      02/19/2024
# Objectives
# Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.
# Declaration of variables

# Array to check File or Directory
Check=("file.txt" "Directory")

# Function that is going to search for the File or Directory
File_Directory_search() {
    # File/Directory user is looking 
    search_File_Directory="$1"

    # For the loop to go over the File/Directory
    for item in "${Check[@]}"; do
        if [ "$item" == "$search_File_Directory" ]; then
            if [ -e "$item" ]; then
                if [ -d "$item" ]; then
                    echo "Directory '$item' already exists!"
                else
                    echo "File '$item' already exists!"
                fi
                return 0
            fi
        fi
    done

    # Check if the directory exists using the test command
    if [ -d "$search_File_Directory" ]; then
        echo "Directory '$search_File_Directory' found on your system."
        return 0
    fi

    # If the File or Directory doesn't exist, create it
    read -p "'$search_File_Directory' is not on your system, do you want to create it? (yes/no) " create_it
    if [ "$create_it" == "yes" ]; then
        if [[ "$search_File_Directory" == *"."* ]]; then
            touch "$search_File_Directory" # Create a file
        else
            mkdir "$search_File_Directory" # Create a directory
        fi
        Check+=("$search_File_Directory")
        echo "'$search_File_Directory' was created and added to your list."
        return 0
    else
        echo "'$search_File_Directory' was not created."
        return 1
    fi
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
    File_Directory_search "$Fi_Di_to_check"
done

