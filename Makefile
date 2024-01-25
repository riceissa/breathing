out.tex: index.md template.tex
	pandoc -f markdown -t latex --template template.tex -o "$@" "$<"
