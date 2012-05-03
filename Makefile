HAS_TOC=$(shell grep -l '\tableofcontents' diplom.tex | wc -l)

compile:
	pdflatex -output-directory build diplom.tex
# If there is a tableofcontents tag in diplom.tex, then we have to
# compile it twice
ifneq ($(HAS_TOC), "0")
	pdflatex -output-directory build diplom.tex
endif

	mv build/diplom.pdf build/_diplom.pdf
	rm build/diplom.*
	mv build/_diplom.pdf build/diplom.pdf


