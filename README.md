Research project template
=========================

Contents
--------

This repository is a template for starting new research project
repositories. It comes preloaded with some useful stuff:

- Citation Style Language [citation
  styles](https://github.com/citation-style-language/styles) installed
  as a submodule in `lib/` for managing citations;
- A `.gitignore` file for LaTeX, Jekyll (for GitHub pages), Python, and
  R, using GitHub's [gitignore
  templates](https://github.com/github/gitignore) as well as providing
  an `_output` folder where I store generated PDFs and Word files;
- GitHub pages set up to use `docs/` on the Master branch;
- [Reveal.js](https://revealjs.com/) installed as a submodule in
  `docs/` for creating web based slide presentations;
- A preconfigured `_config.yml` for Jekyll so it does not try to mess
  with you Reveal.js installation or to generate a web page from the
  README (there is a set of default options for using Pandoc to
  generate `docs/index.html` from the README, see below);
- Preconfigured defaults for generating documents with
  [Pandoc](http://pandoc.org), in the `spec` folder.
- [Pandoc-xnos](https://github.com/tomduck/pandoc-xnos) filter.

This is the general setup I use to start a research project writing in
Markdown and using Pandoc to generate PDFs or Word documents. It works
nicely in conjunction with an Open Science Framework project. I have
tried to keep it simple and avoid feature bloat. Feel free to share
your favorite starter setup with me on Twitter.

:warning: For now, the makefile is set up to work only on Linux/Mac
because it invokes shell commands. Help is appreciated in converting it
to Python for cross-platform support.

Usage
-----

- Click on the "Use this template" button above the file list and see
  further instructions on the page [Creating a repository from a
  template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template)
  on GitHub's Help documentation.
- After checking out the repository, use `make install` to set up
  submodules and the virtual environment with the Pandoc-xnos filter (I
  expect you have `rsync` and Python 3 with `pip` installed).
- **Caution:** by default, only the `chicago-author-date.csl` style is
  checked out. Edit `.install/modules/lib/styles/info/sparse-checkout`
  and run `make submodule` at any time if you want to add other citation
  styles.
- Citation styles are updated frequently; `cd lib/styles && git
  submodule update --remote` frequently to keep up-to-date with the
  latest revisions.

You may also want to fork this repository to create your own template,
or contribute features to this one.

License
-------

This repository is licensed under the [GPL
v3](https://raw.githubusercontent.com/licenses/license-templates/master/templates/gpl3.txt),
meaning you can do whatever you like with your fork of it, and I
provide no guarantee whatsoever that it will not cause your house to
burst up in flames or other unintended side effects.

- The Citations Styles Language Styles belong to
  [CitationStyles.org](http://citationstyles.org/) and are licensed
  under the [Creative Commons Attribution-ShareAlike 3.0 Unported
  license](http://creativecommons.org/licenses/by-sa/3.0/). The
- Reveal.js framework is Copyright (C) 2019 Hakim El Hattab,
  http://hakim.se, and is licensed under the [MIT
  License](https://raw.githubusercontent.com/licenses/license-templates/master/templates/mit.txt).
- [Pandoc-Xnos](https://github.com/tomduck/pandoc-xnos) is licensed by
  Thomas G. Duck under the
  [GPL v3](https://raw.githubusercontent.com/licenses/license-templates/master/templates/gpl3.txt).
- I am not affiliated in any way with any of the organizations or people
  whose software I have included here.

