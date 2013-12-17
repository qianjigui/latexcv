OUTPUT:=output
LATEX:=xelatex

all: pdf

pdf:
	-mkdir -p $(OUTPUT)
	$(LATEX) --output-directory=$(OUTPUT) WPC-CV-CN
	$(LATEX) --output-directory=$(OUTPUT) WPC-CV-EN

rtf:
	latex2rtf -o $(OUTPUT)/main-doc.rtf main-doc.tex
