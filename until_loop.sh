#!/bin/bash
# Stores the filename in a variable.
FILE="output.txt"

# Creates the file if it does not exist.
touch "${FILE}"

# Repeats the loop until the file contains data.
until [[ -s "${FILE}" ]]; do

 # Displays a message indicating that the file is empty.
 echo "${FILE} is empty..."

 # Informs the user that another check will be performed.
 echo "Checking again in 2 seconds..."

 # Pauses execution for 2 seconds before the next check.
 sleep 2

done

# Executes when the file is no longer empty.
echo "${FILE} appears to have some content in it!"