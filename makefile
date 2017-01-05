REPOS := $(subst .git,,$(wildcard */.git))

all:

show:
	@echo $(REPOS) | tr ' ' '\n'

commit: 
	-$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && git commit -a);)

pull: 
	-$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && git pull);)

push: 
	-$(foreach dir,$(REPOS),echo $(dir) ; (cd $(dir) && git push);)
