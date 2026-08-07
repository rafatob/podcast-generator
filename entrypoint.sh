#!/bin/bash

echo "==============================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

# Run python script to generate feed
python3 /usr/bin/feed.py

# Send things to the server
git add -A && git commit -m "Update Feed"

git push --set-upstream origin main



echo "==============================="