.PHONY: all
all: out.tex docs/index.html

out.tex: index.md template.tex
	pandoc -f markdown -t latex --template template.tex --biblatex -o "$@" "$<"

docs/index.html: index.md
	pandoc -f markdown -t html5 --mathjax --toc --citeproc --bibliography references.bib --standalone -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html
