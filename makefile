REPOS := $(subst /.git,,$(shell find . -name .git | sed 's/^..//'))
FIGURES := $(subst /.git,,$(shell find ./figures -name .git | sed 's/^..//'))
SUBDIRS := $(filter-out $(FIGURES) .git gabookI,$(REPOS))
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
