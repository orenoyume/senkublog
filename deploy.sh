#!/bin/bash
echo "Syncing posts from Obsidian to Hugo..."
# Sync files from Obsidian to Hugo content directory
rsync -av --delete "/home/kimetsu/docker/obsidian/config/ObsidianFiles/ObsidianFiles/posts/" "/home/kimetsu/hugodocument/senkublog/content/posts/"

echo "Deploying to Master..."
# Ensure you're in the project root
git checkout master || exit 1

# Copy public folder content to the docs folder
hugo
hugo --minify --destination docs || exit 1

# Commit and push changes
git add .
git commit -m "Update site"
git push -u origin master

# Switch back to master (optional)
# git checkout master
echo "Deployment completed!"
