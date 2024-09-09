########## TEXT ##########
BOLD = \033[1m
BLACK = \033[0;30m
RED = \033[0;31m
GREEN = \033[0;32m
YELLOW = \033[0;33m
BLUE = \033[0;34m
WHITE = \033[0;37m
####### BACKGROUND #######
RED_BG = \033[41m
GREEN_BG = \033[42m
YELLOW_BG = \033[43m
####### RESET BG #######
NC = \033[0m

################
# OS DETECTION #
################

ifeq ($(OS),Windows_NT)     # is Windows_NT on XP, 2000, 7, Vista, 10...
    DETECTED_OS := Windows
else
    DETECTED_OS := $(shell uname)  # same as "uname -s"
endif

#########
# Tasks #
#########

.PHONY: build
build:
	( \
		$(PYTHON_BIN)/mkdocs build -d ./build \
	)
.PHONY: dev-setup
dev-setup: ## - [Setup the local development environment with python3 venv and project dependencies]
	# TODO Include conditional argument to detect when working with Linux

	# ifeq (${shell uname -s}, Linux)
	# 	sudo apt-get update
	# 	sudo apt-get install libpq-dev python3-dev python3-venv openjdk-8-jre
	# endif

	$(PYTHON_SETUP) -m venv .env
	( \
		. $(PYTHON_BIN)/activate; \
		 python -m ensurepip; \
		 python -m pip install --upgrade pip; \
	     pip install -r requirements.txt; \
	)


# Inspired by <http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html>
.PHONY: help
help:
	@echo $(ECHO_ARGS) "$(BLACK)$(BOLD)$(GREEN_BG)Available Tasks:$(NC)$(NC)$(NC)"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-5s\033[0m %s\n", $$1, $$2}'

###############
# Definitions #
###############
export ANSICON=1 # Colors for Windows

ifeq ($(DETECTED_OS),Windows)
	PYTHON_BIN ?= .env/Scripts
	ECHO_ARGS ?= '-e'
	PYTHON_SETUP ?= 'python'
else
	PYTHON_BIN ?= .env/bin
	ECHO_ARGS ?= ''
	PYTHON_SETUP ?= 'python3'
endif
