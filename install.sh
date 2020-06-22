apt-get install git
git init
git remote add origin https://github.com/Kruemmelspalter/kruemmelseite.git
echo "Select branch: "
git branch -r
read branch
git pull origin $branch
