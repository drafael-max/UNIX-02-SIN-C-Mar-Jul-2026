#!/bin/bash

# Store the first and last name from the command line arguments
FIRST_NAME="${1}"
LAST_NAME="${2}"

# Create or overwrite the output file
date +"%d-%m-%Y" > output.txt

# Write the full name to the file
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt

# Create a backup copy of the file
cp output.txt backup.txt

# Display the content of the file
cat output.txt