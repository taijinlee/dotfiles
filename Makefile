ROOT = `pwd`
DOTFILES = emacs gitconfig bash_profile git-completion.bash

install:
	$(foreach dotfile, $(DOTFILES), \
		[ -f $(HOME)/.$(dotfile) ] && mv $(HOME)/.$(dotfile) $(addsuffix .bk, $(HOME)/.$(dotfile)); \
		ln -s $(addprefix $(CURDIR)/dot,$(dotfile)) $(HOME)/.$(dotfile); \
	)
