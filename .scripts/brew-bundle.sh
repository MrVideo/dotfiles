#!/bin/sh
# Move into the user's directory and remove the old Brewfile
cd /Users/mario
rm Brewfile

# Generate new Brewfile
brew bundle dump --describe -q

# Try to add this Brewfile to stage it
git --git-dir=/Users/mario/.dotfiles --work-tree=/Users/mario add Brewfile >> /dev/null
if [ $? -eq 0 ]; then # If this executed correctly, commit it
    git --git-dir=/Users/mario/.dotfiles --work-tree=/Users/mario commit -m "Auto-updated Brewfile" >> /dev/null
    if [ $? -eq 0 ]; then # If the commit was executed correctly, push the file
        git --git-dir=/Users/mario/.dotfiles --work-tree=/Users/mario push >> /dev/null
        if [ $? -eq 0 ]; then
            echo "Correctly executed auto-backup script."
            exit
        else
            echo "The push failed."
            exit
        fi
    else
        echo "Failed to commit Brewfile. There were no changes made to the file."
        exit
    fi
else
    echo "Failed to add file."
    exit
fi
