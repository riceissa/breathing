.PHONY: all
all: out.tex docs/index.html docs/breathing.epub

out.tex: doc.md template.tex references.bib
	pandoc -f markdown -t latex --template template.tex --biblatex --bibliography references.bib -o "$@" "$<"

docs/index.html: doc.md references.bib template.html docs/style.css
	pandoc -f markdown -t html5 --mathjax --toc --number-sections --citeproc --bibliography references.bib --template template.html -o "$@" "$<"

docs/breathing.epub: doc.md references.bib epub.css
#  The CSS stylesheet is basically the Pandoc default one, except that I
#  removed all the lines about pagebreaking and made it look a bit nicer.
#  SumatraPDF and Calibre seem to do pagebreaks on their own already, and in
#  the case of SumatraPDF, it faithfully follows the CSS rather than ignoring
#  it so there's just an unnecessary extra blank page before every single
#  chapter, which also just happens to mess up the bookmark jumping (the
#  bookmarks jump to the blank page before a chapter, rather than the chapter
#  heading itself).
#  Some epub readers (like Aldiko) have trouble with HTML comments, so we need
#  to strip those out.
	pandoc -f markdown -t epub2 --webtex --toc --number-sections --citeproc --bibliography references.bib --css epub.css --strip-comments=true -o "$@" "$<"

.PHONY: clean
clean:
	rm -f out.tex docs/index.html docs/breathing.epub
