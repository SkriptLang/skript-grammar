const CSON = require('cson-parser');
const fileSystem = require('fs');

fileSystem.readFile('source.cson', 'utf8', build);
fileSystem.readFile('SAMPLE-README.md', 'utf8', readMe);

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

async function readMe(error, data) {
    if (error) {
        console.error(error);
        return;
    }
    fileSystem.writeFile('syntax-atom/README.md', data, logError);
    fileSystem.writeFile('syntax-vscode/README.md', data, logError);
    console.log("Updated README files.");
}

function logError(error) {
    if (error) {
        console.error(error);
        return;
    }
}

// console.log(cson.parse( "a: '123'"));
