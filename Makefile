ROOT = `pwd`
DOTFILES = emacs gitconfig bash_profile git-completion.bash slate

install:
	$(foreach dotfile, $(DOTFILES), \
		[ -f $(HOME)/.$(dotfile) ] && mv $(HOME)/.$(dotfile) $(addsuffix .bk, $(HOME)/.$(dotfile)); \
		ln -fs $(addprefix $(CURDIR)/dot,$(dotfile)) $(HOME)/.$(dotfile); \
	)
