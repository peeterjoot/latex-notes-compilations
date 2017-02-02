REPOS := $(subst .git,,$(shell find . -name .git))
FIGURES := $(subst .git,,$(shell find ./figures -name .git))
SUBDIRS := $(filter-out $(FIGURES) ./,$(REPOS))
SUBDIRS += $(wildcard *-redacted)

all: subdirs

show:
	@echo $(SUBDIRS) | tr ' ' '\n'
	#@echo $(REPOS) | tr ' ' '\n'

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
