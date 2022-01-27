#!/bin/bash

## backup

cp -r ~/.config/fish/completions/ backup/completions/
cp -r ~/.config/fish/conf.d/ backup/conf.d/
cp -r ~/.config/fish/functions/ backup/functions/
cp ~/.config/fish/fish_plugins backup/fish_plugins
cp ~/.config/fish/fish_variables backup/fish_variables


commit_msg=$(date | sed 's/ /_/g')

git add . 

git commit -m "$commit_msg"

git push origin main