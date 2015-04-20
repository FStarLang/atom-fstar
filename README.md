FStarIDE: The beginnings of an IDE for F* within Atom Editor
============================================================

### Installation

Download and install [Atom] for your platform

[Atom]: https://atom.io/

Run the "install.sh" script included in this directory.
By default, we assume that atom packages are installed in ~/.atom/packages.
You may need to edit this to suit your installation.

Any file with a `.fst` extension will trigger loading of the language-fstar mode.
For now, you only get very simple syntax highlighting.

### Running F* on the current file

Install the [Script] package by doing `apm install script` from the command line.

For now, Script does not support F\* out of the box; so, you will need to hack
it a bit.

Add the following lines to `.atom/packages/`

```
'F*':
   "File Based":
     command: "fstar"
     args: (context) -> [context.filepath]
```

Do this immediately after the corresponding section for F\#.

Now, when working on a `a.fst` in Atom, pressing "Ctrl+Shift+b" will
run `fstar a.fst` and display the output in bottom pane.

You can close the bottom pane by pressing `Esc`.

[Script]: https://atom.io/packages/script
