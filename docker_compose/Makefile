SHELL := /bin/bash
COMPOSE := /usr/local/bin/docker-compose
VERSION := 1.8.0-rc2
.DEFAULT_GOAL := install
.PHONY: install clean

include ../docker_make_utils/Makefile.help

install: ##@default Installs docker-compose.
	set -x &&\
	if [[ "`docker-compose -v|cut -d " " -f 3`" != "$(VERSION)," ]]; then \
	curl -L https://github.com/docker/compose/releases/download/$(VERSION)/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose &&\
	sudo mv /tmp/docker-compose $(COMPOSE) &&\
	sudo chmod +x $(COMPOSE) ;\
	fi

clean: ##@targets Removes docker-compose.
	sudo rm $(COMPOSE)
