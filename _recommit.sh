# remove .lock file before getting dependency
# in root folder
git reset head~1
git add .
git commit -m 'add something'
git push -f origin main