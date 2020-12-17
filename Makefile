# Global variables {{{1
# ================

# Branch-specific targets and recipes {{{1
# ===================================

# Jekyll {{{2
# ------
PAGES_SRC  = $(filter-out README.md,$(wildcard *.md))
PAGES_OUT := $(patsubst %.md,tmp/%.md, $(PAGES_SRC))

PANDOC/CROSSREF := pandoc/crossref:2.11.2
PANDOC/LATEX    := pandoc/latex:2.11.2

build :
	docker run -v "`pwd`:/srv/jekyll" jekyll/jekyll:3.8.5 \
		/bin/bash -c "chmod 777 /srv/jekyll && jekyll build --future"

pandoc : $(PAGES_OUT)

tmp/%.md : %.md %.bib jekyll.yaml | styles tmp
	docker run -v "`pwd`:/data" --user `id -u`:`id -g` \
		$(PANDOC/CROSSREF) $< -o $@ -d jekyll.yaml
	@test ! -L %.bib || rm %.bib

%.bib : biblio.bib
	@test -f $@ || ln -s $< $@

styles :
	@test -e styles || git clone --depth 1 https://github.com/citation-style-language/styles.git

tmp :
	@test -e tmp || mkdir tmp

# Figuras a partir de vetores {{{2
# ---------------------------

figures/%.png : %.svg
	@test -e figures || mkdir figures
	inkscape -f $< -e $@ -d 96

# vim: set foldmethod=marker tw=72 :
