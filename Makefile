.PHONY: all
all: dotfiles

dotfiles: ## Installs the dotfiles.
	@for file in $(shell find $(PWD) -type f -name ".*" -not -name ".git"); do \
		f=$$(basename $$file); \
		echo $$file "->" $$HOME/$$f; \
		ln -sfn $$file $(HOME)/$$f; \
	done;