.PHONY: all
all: out.tex docs/index.html

out.tex: doc.md template.tex references.bib
	pandoc -f markdown -t latex --template template.tex --biblatex --bibliography references.bib -o "$@" "$<"

docs/index.html: doc.md references.bib
	pandoc -f markdown -t html5 --mathjax --toc --number-sections --citeproc --bibliography references.bib -M maxwidth:40em -M mainfont:Georgia -M fontsize:18px -M linestretch:1.3 --template template.html -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html
