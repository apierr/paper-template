clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.toc
	rm -f *.bbl
	rm -f *.blg
	rm -f *.out
	rm -f main.pdf
open:
	open main.pdf
fast:
	pdflatex main.tex
pdf: 
	make clean; pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

