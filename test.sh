echo "Building Skript grammar packages."
./build.sh

echo "Installing Skript grammar packages."

# Atom.io

cd syntax-atom/
git init
git add .
git commit -m "Clear working tree pre-publish."

apm link --dev

echo "Installed Atom.io extension."

rm -rf .git/

cd ../

# VS Code

cd syntax-vscode/
git init
git add .
git commit -m "Clear working tree pre-publish."

rm ./*.vsix
vsce package

echo "Packaged VS Code extension."

for FILE in `find . -name 'skript-grammar-*' -type f`
do
    echo "Found extension file " $FILE
    code --install-extension $FILE
done


echo "Installed VS Code extension."


rm -rf .git/

cd ../
