PDF_OUT=Resume.pdf

all: $(PDF_OUT) 

$(PDF_OUT): Resume.tex
	xelatex -interaction=nonstopmode Resume.tex

clean:
	rm -f *.aux *.log *.out *.pdf 
