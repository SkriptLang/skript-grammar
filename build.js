const CSON = require('cson-parser');
const fileSystem = require('fs');

fileSystem.readFile('source.cson', 'utf8', build);

async function build(error, data) {
    if (error) {
        console.error(error);
        return;
    }
    const parsed = CSON.parse(data);
    fileSystem.writeFile('syntax-atom/grammars/skript.cson', CSON.stringify(parsed), logError);
    console.log("Updated grammar for Atom.io.");
    fileSystem.writeFile('syntax-vscode/syntaxes/skript.json', JSON.stringify(parsed), logError);
    console.log("Updated grammar for VS Code.");
}

function logError(error) {
    if (error) {
        console.error(error);
        return;
    }
}

// console.log(cson.parse( "a: '123'"));
