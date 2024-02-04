.PHONY: all
all: out.tex docs/index.html docs/breathing.epub

out.tex: doc.md template.tex references.bib
	pandoc -f markdown -t latex --template template.tex --biblatex --bibliography references.bib -o "$@" "$<"

docs/index.html: doc.md references.bib template.html docs/style.css
	pandoc -f markdown -t html5 --mathjax --toc --number-sections --citeproc --bibliography references.bib --template template.html -o "$@" "$<"

docs/breathing.epub: doc.md references.bib epub.css
# The webtex URL uses wordpress rather than the default codecogs one because
# wordpress allows one to set the background and foreground colors, which turns
# out to be necessary in order to even see the math in dark mode in Calibre
# (codecogs uses transparent background with black text, so in Calibre dark
# mode the math just appears as black boxes).
#  Some epub readers (like Aldiko) have trouble with HTML comments, so we need
#  to strip those out.
	pandoc -f markdown -t epub2 --webtex="https://s0.wp.com/latex.php?bg=ffffff&fg=000000&latex=" --toc --number-sections --citeproc --bibliography references.bib --css epub.css --strip-comments=true -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html docs/breathing.epub
