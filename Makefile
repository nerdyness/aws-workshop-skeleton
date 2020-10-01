WORKSHOP_DIR=website

.PHONY: help
help: ## Prints this help/overview message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-14s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: install-hugo
install-hugo: ## Installs hugo using Homebrew
	brew install hugo

.PHONY: download-theme
download-theme: ## Downloads the "learn" theme (which is already in this repository)
	git clone https://github.com/matcornic/hugo-theme-learn.git $(WORKSHOP_DIR)/themes/learn

.PHONY: update-theme
update-theme: ## Updates the "learn" theme git repository
	cd $(WORKSHOP_DIR)/themes/learn; git pull

.PHONY: run
run: ## Runs Hugo as a service
	cd $(WORKSHOP_DIR); hugo serve

.PHONY: build
build: ## Builds the workshop via Hugo
	cd $(WORKSHOP_DIR); hugo -D
