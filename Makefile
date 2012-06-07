ROOT = `pwd`
DOTFILES = .emacs .gitconfig .bash_profile .git-completion.bash

install:
	$(foreach dotfile, $(DOTFILES), \
		[ -f $(HOME)/$(dotfile) ] && mv $(HOME)/$(dotfile) $(addsuffix .bk, $(HOME)/$(dotfile)); \
		ln -s $(subst .,$(CURDIR)/dot,$(dotfile)) $(HOME)/$(dotfile); \
	)
