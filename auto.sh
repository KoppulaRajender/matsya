#!/bin/bash

## backup

cp ~/.config/fish/completions/fisher.fish backup/completions/fisher.fish
cp ~/.config/fish/conf.d/fish_plugins backup/conf.d/fish_plugins
cp ~/.config/fish/conf.d/fish_variables backup/conf.d/fish_variables 
cp ~/.config/fish/functions/fish_prompt.fish backup/functions/fish_prompt.fish
cp ~/.config/fish/functions/fisher.fish backup/functions/fisher.fish


commit_msg=$(date | sed 's/ /_/g')

git add . 

git commit -m "$commit_msg"

git push origin main