# Adapted from Igal Tabachnik, 2007.
# Based on work by Andres Raba et al., 2013-2015.

.PHONY: default all clean version.tex

DIR := $(shell pwd)
GIT_VER := $(shell git describe --tags --always --long | tr -d '\n')

# Default top-level LaTeX to generate
DEFAULTTOPTEX = stanford-compendium.tex

# Top-level LaTeX files from which CTFP book can be generated
TOPTEXFILES = version.tex $(DEFAULTTOPTEX)

# Default PDF file to make
DEFAULTPDF:=$(DEFAULTTOPTEX:.tex=.pdf)

# Other PDF files for the CTFP book 
TOPPDFFILES:=$(TOPTEXFILES:.tex=.pdf)

# Configuration files
OPTFILES = opt-print-ustrade.tex \
			opt-reader-10in.tex \

# All the LaTeX files for the CTFP book in order of dependency
TEXFILES = $(TOPTEXFILES) $(SCALATEXFILES) $(OPTFILES)

default: $(DEFAULTPDF) copy # todo cover

scala: version.tex $(SCALAPDF) copy-scala

# Main targets
$(TOPPDFFILES) : %.pdf : %.tex $(TEXFILES) 
	if which latexmk > /dev/null 2>&1 ;\
	then latexmk -shell-escape -interaction=nonstopmode -halt-on-error -norc -pdflatex="xelatex %O %S" -pdf $< ;\
	else echo "Error: unable to find latexmk. Is it installed?" ;\
	fi

version.tex:
	/bin/echo -n '\newcommand{\OPTversion}{' > version.tex
	git describe --tags --always --long | tr -d '\n' >> version.tex
	/bin/echo -n '}' >> version.tex

copy:
	echo 'Creating output directory: $(GIT_VER)'
	mkdir -p ../out/$(GIT_VER)
	mv stanford-compendium.pdf ../out/$(GIT_VER)/stanford-compendium.pdf

clean:
	rm -f *~ *.aux {stanford-compendium*}.{out,log,pdf,dvi,fls,fdb_latexmk,aux,brf,bbl,idx,ilg,ind,toc,sed}
	if which latexmk > /dev/null 2>&1 ; then latexmk -CA; fi
	rm -rf ../out

clean-minted: 
	rm -rf _minted-*

