node build.js

cp SAMPLE-README.md syntax-atom/README.md
cp SAMPLE-README.md syntax-vscode/README.md
cp SAMPLE-README.md syntax-st3/README.md
echo "Updated README files."

cp LICENSE syntax-atom/LICENSE.md
cp LICENSE syntax-vscode/LICENSE.md
cp LICENSE syntax-st3/LICENSE.md
echo "Updated LICENSE files."

cd syntax-vscode/

rm ./*.vsix

vsce package

cd ../
