PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	$(info Installing the library to $(BINDIR))
	@install -Dm755 script/yaml.sh  $(BINDIR)/yaml.sh

uninstall:
	$(info Removing library from $(BINDIR))
	@rm -f $(BINDIR)/yaml.sh

.PHONY: install uninstall
