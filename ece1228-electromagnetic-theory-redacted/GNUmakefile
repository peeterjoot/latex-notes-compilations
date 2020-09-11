THISDIR := ece1228-electromagnetic-theory-redacted
THISBOOK := ece1228
ORIGDIR := ece1228-electromagnetic-theory

BIBLIOGRAPHY_PATH := classicthesis_mine
HAVE_OWN_CONTENTS := 1
HAVE_OWN_TITLEPAGE := 1
MY_CLASSICTHESIS_FRONTBACK_FILES += ../latex/classicthesis_mine/FrontBackmatter/Index.tex
MY_CLASSICTHESIS_FRONTBACK_FILES += ../latex/classicthesis_mine/FrontBackmatter/ContentsAndFigures.tex
BOOKTEMPLATE := ../latex/classicthesis_mine/ClassicThesis2.tex

#VER := $(shell grep Version ../$(ORIGDIR)/.revinfo/gitCommitDateAsMyTime.tex | sed 's/.*{//;s/.xspace.*//;')

include ../$(ORIGDIR)/make.revision
include ../latex/make.bookvars

#ONCEFLAGS := -justonce

SOURCE_DIRS += appendix
FIGURES := ../figures/$(ORIGDIR)
SOURCE_DIRS += $(FIGURES)

# also toggle redacted classicthesis-config.tex
# FIXME: changing this flag should be a dependency of mathematica.tex 
REDACTED := -redacted

#GENERATED_SOURCES += julia.tex 
GENERATED_SOURCES += mathematica.tex 

ECE1228TEX := $(notdir $(wildcard ../$(ORIGDIR)/*.tex))
ECE1228TEX += FrontBackmatter/preface.tex
ECE1228STY += thisbook.sty
ECE1228STY += ece1228.sty

THISBOOK_DEPS += $(GENERATED_SOURCES)
THISBOOK_DEPS += $(ECE1228TEX)
THISBOOK_DEPS += $(ECE1228STY)
THISBOOK_DEPS += $(PDFS_FROM_EPS)

include ../latex/make.rules

LATEXMK := ../latex/bin/make_pdflatex --oldscript -filename

$(ECE1228TEX) : %.tex : ../$(ORIGDIR)/%.tex
	mkdir -p $(dir $@)
	cp $< $@

$(ECE1228STY) : %.sty : ../$(ORIGDIR)/%.sty
	cp $< $@

clean ::
	rm -f $(ECE1228TEX) $(ECE1228STY)

myrefs.bib : 
	(cd ../$(ORIGDIR) ; make myrefs.bib)
	cp ../$(ORIGDIR)/myrefs.bib .
