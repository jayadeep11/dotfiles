#!/bin/sh

# Prompt user for confirmation
read -n1 -r -p $'Would you like to copy files (y,n) ' INST
echo    # Move to a new line

# Check user input
if [[ $INST == "y" || $INST == "Y" ]]; then
    # Echo and create a directory
    # List directories and save them in an array
    dirs=($(ls -d .config/*/))

    # Loop through the directories and delete each one
    for dir in "${dirs[@]}"; do
        rm "$HOME/$dir"
    done

    # link
    stow .

    # Print confirmation message
    echo "Everything Allright"
else
    echo "Installation aborted."
fi


