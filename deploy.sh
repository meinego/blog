#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# set commit message
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# build theme
hugo -t hugo-theme-codex

# Go To Public folder, sub module commit
cd public
git add .
git commit -m "$msg"
git push origin master

cd ..
git add .
git commit -m "$msg"
git push origin master