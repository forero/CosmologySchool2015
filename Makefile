MAIN = main
FINAL=final_sanford
CV_SG=cv_gottlober.pdf
CV_YH=cv_hoffman.pdf
PUB_SG=publist_gottlober.pdf
PUB_YH=publist_hoffman.pdf

all: $(FINAL).pdf 

$(FINAL).pdf: $(MAIN).pdf
	pdftk A=$(MAIN).pdf B=$(CV_YH) C=$(PUB_YH) D=$(CV_SG) E=$(PUB_SG) cat A1-4 B A5 C A6 D A7 E output $(FINAL).pdf

$(MAIN).pdf: $(MAIN).tex
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

view:
	open $(MAIN).pdf &
clean:
	rm -f $(MAIN).pdf $(MAIN).log $(MAIN).aux