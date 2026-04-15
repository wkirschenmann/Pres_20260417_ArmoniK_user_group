# Presentation Template

A LaTeX Beamer presentation template using the [ArmoniK BeamerTemplate](https://github.com/aneoconsulting/ArmoniK.BeamerTemplate) theme from Aneo.

## Prerequisites

- LuaLaTeX
- [latexmk](https://ctan.org/pkg/latexmk)
- LaTeX packages: `hyperref`, `amsmath`, `minted`, `svg`

## Setting up a new presentation

1. Copy `.latexmkrc`, `.gitignore`, and `presentation.tex` into your project.

2. Add the Beamer template as a git submodule:

```sh
git submodule add git@github.com:aneoconsulting/ArmoniK.BeamerTemplate.git Template
```

3. Edit `presentation.tex` to set your author, title, institute, and date.

## Building

```sh
latexmk
```

This compiles the presentation with LuaLaTeX (configured in `.latexmkrc`).

To clean build artifacts:

```sh
latexmk -c
```