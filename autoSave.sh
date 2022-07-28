#!/bin/bash
rsync -av --exclude={".git",".github","autoSave.sh"} /Users/yu/notes/ /Users/yu/Developer/notes
cd /Users/yu/Developer/notes
git add . 
git commit -m "auto save by autoSave.sh"
git push 
