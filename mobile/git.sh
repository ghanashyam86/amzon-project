#!/bin/bash

# Add all changes
git add .

# Check if there are changes to commit
if git diff-index --quiet HEAD --; then
    echo " No changes to commit."
else
    # Ask for commit message
    read -p "Enter commit message: " COMMIT_MSG
    git commit -m "$COMMIT_MSG"

    # Push using SSH
    git push origin mobile
    echo " Code pushed successfully using SSH!"
fi

