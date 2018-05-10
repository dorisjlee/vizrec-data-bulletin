TEX=/usr/local/texlive/2014/bin/universal-darwin/pdflatex
BIBTEX=/usr/local/texlive/2014/bin/universal-darwin/bibtex
DOC := main
SRCS := $(wildcard *.tex) $(BIB) $(FIGS) Makefile

ALL := $(DOC).pdf

all : 
	$(TEX) $(DOC).tex 
	$(TEX) $(DOC)
	$(TEX) $(DOC)

figs :
	mkdir -p figs
clean:  
	rm -f $(ALL) *.bbl *.blg *.log *.aux *.out *.run.xml
