################################################################
################################################################
# Makefile for "siunitx"                                       #
################################################################
################################################################

################################################################
# Default with no target is to give help                       #
################################################################

help:
	@echo ""
	@echo " make clean        - clean out test directory"
	@echo " make ctan         - create a CTAN-ready archive"
	@echo " make doc          - typeset documentation"
	@echo " make localinstall - install files in local texmf tree"
	@echo " make tds          - create a TDS-ready archive"
	@echo " make unpack       - extract packages"
	@echo ""
	
##############################################################
# Master package name                                        #
##############################################################

PACKAGE = siunitx
	
##############################################################
# Directory structure for making zip files                   #
##############################################################

CTANROOT := ctan
CTANDIR  := $(CTANROOT)/$(PACKAGE)
TDSDIR   := tds

##############################################################
# Data for local installation and TDS construction           #
##############################################################

INCLUDEPDF  := $(PACKAGE)
INCLUDETEX  :=
INCLUDETXT  := README
PACKAGEROOT := latex/$(PACKAGE)

##############################################################
# Details of source files                                    #
##############################################################

DTX      = $(subst ,,$(notdir $(wildcard *.dtx)))
DTXFILES = $(subst .dtx,,$(notdir $(wildcard *.dtx)))
UNPACK   = $(DTX)

##############################################################
# Clean-up information                                       #
##############################################################

AUXFILES = \
	aux  \
	cmds \
	glo  \
	gls  \
	hd   \
	idx  \
	ilg  \
	ind  \
	log  \
	out  \
	tmp  \
	toc  
		
CLEAN = \
	bib \
	gz  \
	ins \
	pdf \
	sty \
	txt \
	zip 
	
################################################################
# File building: default actions                               #
################################################################

%.pdf: %.dtx
	NAME=`basename $< .dtx` ; \
	echo "Typesetting $$NAME" ; \
	pdflatex -draftmode -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input $<" &> /dev/null ; \
	if [ $$? = 0 ] ; then  \
	  makeindex -s l3doc.ist -o $$NAME.ind $$NAME.idx &> /dev/null ; \
	  pdflatex -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input $<" &> /dev/null ; \
	  pdflatex -interaction=nonstopmode "\AtBeginDocument{\DisableImplementation} \input $<" &> /dev/null ; \
	else \
	  echo "  Compilation failed" ; \
	fi ; \
	for I in $(AUXFILES) ; do \
	  rm -f $$NAME.$$I ; \
	done
			
################################################################
# User make options                                            #
################################################################

.PHONY = \
	clean        \
	ctan         \
	doc          \
	localinstall \
	tds          \
	unpack
	
clean:
	for I in $(AUXFILES) $(CLEAN); do \
	  rm -f *.$$I ; \
	done
	rm -rf $(CTANROOT)
	rm -rf $(TDSDIR)
	
ctan: tds
	echo "Creating CTAN archive"
	mkdir -p $(CTANDIR)/
	rm -rf $(CTANDIR)/*
	cp -f *.dtx $(CTANDIR)/ ; \
	for I in $(INCLUDEPDF) ; do \
	  cp -f $$I.pdf $(CTANDIR)/ ; \
	done ; \
	for I in $(INCLUDETEX); do \
	  cp -f $$I.tex $(CTANDIR)/ ; \
	done ; \
	for I in $(INCLUDETXT); do \
	  cp -f $$I.txt $(CTANDIR)/; \
	  mv $(CTANDIR)/$$I.txt $(CTANDIR)/$$I ; \
	done ; \
	cp $(PACKAGE).tds.zip $(CTANDIR)/ 
	cd $(CTANDIR) ; \
	zip -ll -q -r -X $(PACKAGE).zip .
	cp $(CTANDIR)/$(PACKAGE).zip ./
	
doc: $(foreach FILE,$(DTXFILES),$(FILE).pdf)
	
localinstall: unpack
	echo "Installing files"
	TEXMFHOME=`kpsewhich --var-value=TEXMFHOME` ; \
	mkdir -p $$TEXMFHOME/tex/$(PACKAGEROOT)/ ; \
	rm -rf $$TEXMFHOME/tex/$(PACKAGEROOT)/* ; \
	cp *.sty $$TEXMFHOME/tex/$(PACKAGEROOT)/ ; \
	texhash &> /dev/null
	
tds: doc
	echo "Creating TDS archive"
	mkdir -p $(TDSDIR)/
	rm -rf $(TDSDIR)/*
	mkdir -p $(TDSDIR)/doc/$(PACKAGEROOT)/
	mkdir -p $(TDSDIR)/source/$(PACKAGEROOT)/
	mkdir -p $(TDSDIR)/tex/$(PACKAGEROOT)/
	cp -f *.dtx $(TDSDIR)/source/$(PACKAGEROOT)/ ; \
	for I in $(INCLUDEPDF) ; do \
	  cp -f $$I.pdf $(TDSDIR)/doc/$(PACKAGEROOT)/ ; \
	done ; \
	cp -f *.sty $(TDSDIR)/tex/$(PACKAGEROOT)/ ; \
	for I in $(INCLUDETEX); do \
	  cp -f $$I.tex $(TDSDIR)/doc/$(PACKAGEROOT)/ ; \
	done ; \
	for I in $(INCLUDETXT); do \
	  cp -f $$I.txt $(TDSDIR)/doc/$(PACKAGEROOT)/ ; \
	  mv $(TDSDIR)/doc/$(PACKAGEROOT)/$$I.txt $(TDSDIR)/doc/$(PACKAGEROOT)/$$I ; \
	done 
	cd $(TDSDIR) ; \
	zip -ll -q -r -X $(PACKAGE).tds.zip .
	cp $(TDSDIR)/$(PACKAGE).tds.zip ./
	
unpack: 
	echo "Unpacking files"
	for I in $(UNPACK) ; do \
	  tex $$I &> /dev/null ; \
	done