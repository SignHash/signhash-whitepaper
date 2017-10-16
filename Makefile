SHA=$(shell git rev-parse --short --verify HEAD)
DATE=$(shell git show -s --format="%cd" --date=short HEAD)
REV="$(SHA) - $(DATE)"
PDFLATEX=pdflatex

all: pdf

pdf:
	$(PDFLATEX) -interaction=errorstopmode -halt-on-error signhash-whitepaper.tex
