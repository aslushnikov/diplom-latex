compile:
	pdflatex -output-directory build text.tex
	mv build/text.pdf build/_text.pdf
	rm build/text.*
	mv build/_text.pdf build/text.pdf

