# Skript Grammar

## NOTE: This is in development and not in a usable state.

An official highlighter schema for the Skript language.

This repository contains the details for publishing individual editor plugins (e.g. `skript-vscode` and `skript-atom`) as well as a single `source.cson` file that is used by all of these.

The source file is designed to be automatically converted to all editor styles, so that any updates require changing only one copy rather than several.

We use an automatic process
- to make sure all highlighters have reliable, matching output
- to reduce the amount of work needed to maintain everything
- to prevent accidental errors

## Requirements

This project uses `node.js`. Individual editor builds and deployments may require special packages installed (as well as the editor itself, of course.)

## Building

To build changes to the `source.cson` file, use `npm run build`.
This will update the respective source file for each editor.

## Publishing

To publish changes, use `npm run publish <version>`.
This may require additional configuration, e.g. providing git credentials.

Publishing is a **dangerous** action and should be taken with care.

## Testing

Each editor can be tested individually.
The highlighter file will need to be rebuilt from source first.

```sh
$ npm run build
```

A sample `test.sk` file is provided, which contains *all* of the example scripts provided with the Skript plugin.

If a new feature is not displayed or tested within this file, an example should be added to the **bottom** of the `test.sk` file with a clear comment above it explaining what the feature is and, if necessary, what it should look like.

### VS Code Testing

###### Method 1

1. Open VS Code in `skript-grammar/syntax-vscode` directory.
```sh
$ code skript-grammar/syntax-vscode
```
2. Press **F5** or `Run > Start Debugging`.

###### Method 2

1. Install [VSCE](https://code.visualstudio.com/api/working-with-extensions/publishing-extension#vsce).
2. Navigate to the `skript-grammar/syntax-vscode` directory.
```sh
$ cd skript-grammar/syntax-vscode
```
3. Package the files for VS Code using VSCE and follow up with the process.
```sh
$ vsce package
```
4. Install the extension (replace 1.x.x with the correct numbers from the output file).
```sh
$ code --install-extension ./skript-grammar-1.x.x.vsix
```
5. Relaunch VS Code or **Ctrl+Shift+P** and choose `reload window`.
6. Open the `test.sk` example file.

### Atom Testing

1. Navigate to the `skript-grammar/syntax-atom` directory.
```sh
$ cd skript-grammar/syntax-atom
```

2. Link this package with your Atom editor in DEV mode.
```sh
$ apm link --dev
```

3. Open the atom editor and navigate to `View > Developer > Open in Dev Mode...`
4. Open the `test.sk` example file.

Once the file is opened in developer mode, the window can be reloaded to visualise changes (after rebuilding the language file.)
