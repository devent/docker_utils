SHELL := /bin/bash
.DEFAULT_GOAL := help
.PHONY: weave convoy compose

include docker_make_utils/Makefile.help

weave: ##@targets Installs and setups the weave network.
	cd weave && $(MAKE)

convoy: ##@targets Installs and setups the convoy volumes.
	cd convoy && $(MAKE)

compose: ##@targets Installs docker-compose.
	cd docker_compose && $(MAKE)
