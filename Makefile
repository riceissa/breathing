.PHONY: all
all: out.tex docs/index.html docs/breathing.epub

out.tex: doc.md template.tex references.bib
	pandoc -f markdown -t latex --template template.tex --biblatex --bibliography references.bib -o "$@" "$<"

docs/index.html: doc.md references.bib template.html docs/style.css
	pandoc -f markdown -t html5 --mathjax --toc --number-sections --citeproc --bibliography references.bib --template template.html -o "$@" "$<"

docs/breathing.epub: doc.md references.bib stylesheet1.css
# --toc-depth=1 is necessary because for some reason the <h2> bookmarks
#  don't work correctly on SumatraPDF (they just jump to the parent
#  <h1> anchor instead).
	pandoc -f markdown -t epub --webtex --toc --number-sections --toc-depth=1 --citeproc --bibliography references.bib --css stylesheet1.css -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html docs/breathing.epub
