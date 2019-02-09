REPOS := $(subst /.git,,$(shell find . -name .git | sed 's/^..//'))
FIGURES := $(subst /.git,,$(shell find ./figures -name .git | sed 's/^..//'))

# busted:
DONT_MAKE += gabookI

DONT_MAKE += stokesTheorem
DONT_MAKE += potentialMethods
DONT_MAKE += curvilinear
DONT_MAKE += frequencydomain
DONT_MAKE += phy450-relativisticEandM/mmacells
DONT_MAKE += phy2403-quantum-field-theory/mmacells
DONT_MAKE += GAelectrodynamics/mmacells
DONT_MAKE += phy2403-quantum-field-theory-redacted/mmacells
DONT_MAKE += latex
DONT_MAKE += mathematica
DONT_MAKE += matlab
DONT_MAKE += julia

SUBDIRS := $(filter-out $(FIGURES) .git $(DONT_MAKE),$(REPOS))
SUBDIRS += $(wildcard *-redacted)

all: subdirs

show:
	@echo $(SUBDIRS) | tr ' ' '\n'

commit: 
	-$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && git commit -a);)

pull: 
	-$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && git pull);)

push: 
	-$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && git push);)

subdirs:
	$(foreach dir,$(SUBDIRS),echo $(dir) ; make -C $(dir);)

diff:
	$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && echo $(dir) && git diff -a);)

subclean:
	$(foreach dir,$(SUBDIRS),echo $(dir) ; make -C $(dir) clean;)

l:
	find . -name "*.tex" | grep -vF .revinfo | sed 's/^..//' > $@
