.PHONY: all
all: out.tex docs/index.html docs/breathing.epub

out.tex: doc.md template.tex references.bib
	pandoc -f markdown -t latex --template template.tex --biblatex --bibliography references.bib -M date:$(shell git log -1 --format="%as") -o "$@" "$<"

docs/index.html: doc.md references.bib template.html docs/style.css
	pandoc -f markdown -t html5 --mathjax --toc --number-sections --citeproc --bibliography references.bib --template template.html -M date:$(shell git log -1 --format="%as") -o "$@" "$<"

docs/breathing.epub: doc.md references.bib epub.css
# The webtex URL uses \bg{white} to set the background color to be white; this
# is necessary in order to even see the math in dark mode in Calibre (codecogs
# by default uses transparent background with black text, so in Calibre dark
# mode the math just appears as black text on a black background).
# Some epub readers (like Aldiko) have trouble with HTML comments, so we need
# to strip those out, which is why that flag is there.
	pandoc -f markdown -t epub2 --webtex="https://latex.codecogs.com/png.image?%5Cdpi%7B130%7D%5Cbg%7Bwhite%7D" --toc --number-sections --citeproc --bibliography references.bib --css epub.css --strip-comments=true -M date:$(shell git log -1 --format="%as") -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html docs/breathing.epub
