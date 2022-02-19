echo "Publishing Skript grammar packages: Version " $1

# Atom.io

cd syntax-atom/
git init
git add .
git commit -m "Clear working tree pre-publish."

# Publish here
# apm publish $1
echo "Published Atom.io extension."

rm -rf .git/

cd ../

# VS Code

cd syntax-vscode/
git init
git add .
git commit -m "Clear working tree pre-publish."

# Publish here
# vsce publish

echo "Published VS Code extension."

rm -rf .git/

cd ../

# Sublime Text 3

cd syntax-st3/
git init
git add .
git commit -m "Clear working tree pre-publish."

# Publish here

echo "Published Sublime Text 3 extension."

rm -rf .git/

cd ../
