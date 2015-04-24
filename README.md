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

### Building an F\* project

Install the [build] package by doing `apm install build` from the command line.

In the root directory of your project, add a file called `.atom-build.json` with 
something like the following text (adapt it for your configuration, except for 
the `errorMatch` part)

```
{
  "cmd": "fstar",
  "args": [ "{FILE_ACTIVE}" ],
  "sh": false,
  "errorMatch": "(?<file>[^\\(]+.fst)\\((?<line>\\d+),(?<col>\\d+).*\\n"
}
```

Now, in any active file in that project, pressing `Ctrl+Alt+b` will call `fstar` on that
file, reporting the result in a separate pane. 

You can jump to the next errors by pressing `Ctrl+Alt+g` or jump to the 
first one with `Ctrl+Alt+h`.

You can, of course, configure `.atom-build.json` to call `make` or whatever 
other build script you have for your project. Read the [build] documentation
for more details.

[build]: https://atom.io/packages/build
