CHAPTERS=Chapter-*/Chapter-*.tex  Appendix-*/Appendix-*.tex
NAME=meng-thesis
AUX=$(NAME).aux front.aux Chapter-*/*.aux Appendix-*/*.aux
INTERMEDIATES=$(NAME).bbl $(NAME).blg $(NAME).lof $(NAME).lot \
              $(NAME).log $(NAME).toc 
PDF = $(NAME).pdf

$(NAME).pdf : $(NAME).tex $(NAME).bib front.tex $(CHAPTERS) ncsuthesis.cls optional.tex
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean :
	rm $(AUX) $(INTERMEDIATES) $(PDF)


