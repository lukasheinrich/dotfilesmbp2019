.PHONY: all
all: dotfiles

dotfiles: ## Installs the dotfiles.
	@for file in $(shell find $(PWD) -maxdepth 1 -name ".*" -not -name ".git"); do \
		f=$$(basename $$file); \
		echo $$file "->" $$HOME/$$f; \
		ln -sfn $$file $(HOME)/$$f; \
	done;
