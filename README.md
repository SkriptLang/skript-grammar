# skript-grammar

## NOTE: This is in development and not in a usable state.

An official highlighter schema for the Skript language.

This repository contains the details for publishing individual editor plugins (e.g. `skript-vscode` and `skript-atom`) as well as a single `source.cson` file that is used by all of these.

The source file is designed to be automatically converted to all editor styles, so that any updates require changing only one copy rather than several.

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

A sample `test.sk` file is provided, which contains *all* of the example scripts provided with the Skript plugin.

If a new feature is not displayed or tested within this file, an example should be added to the **bottom** of the `test.sk` file with a clear comment above it explaining what the feature is and, if necessary, what it should look like.

### VS Code Testing

Todo.

### Atom Testing

To test syntax in the atom editor, navigate to the `skript-atom` directory and run `apm link --dev`.

The `test.sk` file can then be opened in dev mode. Make sure no conflicting extensions are installed.
