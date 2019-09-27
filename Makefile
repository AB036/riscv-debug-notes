PDFDIR := ./pdfs
SRC_FILES := $(wildcard *.tex)
PDF_FILES := $(SRC_FILES:.tex=.pdf)

all: $(PDF_FILES)
	
%.pdf: %.tex
	pdflatex -output-directory=$(PDFDIR) $<
	
clean:
	rm $(PDFDIR)/*
