echo "Your commit message ? :"
read msg

echo "In wich branch ?"
read brch

git checkout -m  "${brch}"

git add .

git commit -m"${msg}"

if [ -n "$(git status - porcelain)" ];
then
 echo "Nothing to commit"
else
 git status
 echo "Pushing data to remote server!!!"
 git push -u origin "${brch}"
fi
