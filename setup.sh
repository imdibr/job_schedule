#!/bin/bash

# Define the project directory and GitHub repository URL
PROJECT_DIR="$HOME/Documents/job_schedule"
GITHUB_URL="https://github.com/imdibr/job_schedule.git"

# Create the project directory
if [ ! -d "$PROJECT_DIR" ]; then
    mkdir -p "$PROJECT_DIR"
    echo "Created directory: $PROJECT_DIR"
else
    echo "Directory already exists: $PROJECT_DIR"
fi

# Change to the project directory
cd "$PROJECT_DIR" || exit

# Initialize Git
git init
echo "Initialized empty Git repository in $PROJECT_DIR"

# Add files to the repository
if [ "$(ls -A $PROJECT_DIR)" ]; then
    git add .
    echo "Added existing files to Git."
else
    echo "No existing files to add."
fi

# Commit the changes
git commit -m "Initial commit"
echo "Committed initial changes."

# Link to the GitHub repository
git remote add origin "$GITHUB_URL"
echo "Linked local repository to GitHub repository."

# Push the changes to GitHub
git branch -M main
git push -u origin main
echo "Pushed local changes to GitHub repository."

echo "Setup completed successfully."
