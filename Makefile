.PHONY: all
all: out.tex docs/index.html

out.tex: doc.md template.tex references.bib
	pandoc -f markdown -t latex --template template.tex --biblatex --bibliography references.bib -o "$@" "$<"

docs/index.html: doc.md references.bib template.html docs/style.css
	pandoc -f markdown -t html5 --mathjax --toc --number-sections --citeproc --bibliography references.bib --template template.html -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html
