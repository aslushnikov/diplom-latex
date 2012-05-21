compile:
	rubber -d diplom.tex
	mv diplom.pdf build/diplom.pdf
	mv diplom.tex _diplom.tex
	rm diplom.*
	mv _diplom.tex diplom.tex


