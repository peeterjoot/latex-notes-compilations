THISDIR := phy2403-quantum-field-theory-redacted
THISBOOK := phy2403
ORIGDIR := phy2403-quantum-field-theory

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
#GENERATED_SOURCES += mathematica.tex 

PHY2403TEX := $(notdir $(wildcard ../$(ORIGDIR)/*.tex))
PHY2403TEX += FrontBackmatter/preface.tex
PHY2403STY += thisbook.sty
PHY2403STY += phy2403.sty

THISBOOK_DEPS += $(GENERATED_SOURCES)
THISBOOK_DEPS += $(PHY2403TEX)
THISBOOK_DEPS += $(PHY2403STY)
THISBOOK_DEPS += $(PDFS_FROM_EPS)

include ../latex/make.rules

mmacells/mmacells.sty:
	git clone https://github.com/jkuczm/mmacells

mmacells.sty: mmacells/mmacells.sty
	cp $^ $@

LATEXMK := ../latex/bin/make_pdflatex --oldscript -filename

$(PHY2403TEX) : %.tex : ../$(ORIGDIR)/%.tex
	mkdir -p $(dir $@)
	cp $< $@

$(PHY2403STY) : %.sty : ../$(ORIGDIR)/%.sty
	cp $< $@

# doesn't work.  gets overwritten:
#rerev:
#	rm -rf .revinfo
#	cp -a ../$(ORIGDIR)/.revinfo .revinfo

clean ::
	rm -f $(PHY2403TEX) $(PHY2403STY)

myrefs.bib : 
	(cd ../$(ORIGDIR) ; make myrefs.bib)
	cp ../$(ORIGDIR)/myrefs.bib .
