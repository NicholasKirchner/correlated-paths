figures = normaldist.pdf pricedist.pdf optionscatter.pdf normalscatter.pdf

correlated_paths.pdf: correlated_paths.aux
	pdflatex correlated_paths.tex

correlated_paths.aux: $(figures) correlated_paths.tex
	pdflatex correlated_paths.tex

.PHONY : clean
clean :
	-rm *.log *.aux $(figures)

%.eps: %.gp; gnuplot $<

%.ps: %.dvi; dvips $<

%.pdf: %.ps; ps2pdf $<

%.dvi: %.tex %.eps; latex $<

%.dvi: %.tex
