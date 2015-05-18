#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project. 
rm -rf public/*
hugo -t hyde

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
git commit -m "rebuilding site `date`"

# Push source and build repos.
git push origin master

# Come Back
cd ..
