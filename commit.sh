git add .
read -p "Enter commit message: " msg
git commit -a -m $msg
git push origin master
