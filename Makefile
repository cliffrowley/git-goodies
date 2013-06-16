PREFIX ?= /usr/local
MANPREFIX ?= "$(PREFIX)/share/man/man1"
BINS = $(wildcard bin/git-*)
MANS = $(wildcard man/git-*.md)
MAN_HTML = $(MANS:.md=.html)
MAN_PAGES = $(MANS:.md=.1)

# docs: $(MAN_HTML) $(MAN_PAGES)
docs: $(MAN_PAGES)

install:
	@mkdir -p $(DESTDIR)$(MANPREFIX)
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo "... installing bins to $(DESTDIR)$(PREFIX)/bin"
	@echo "... installing man pages to $(DESTDIR)$(MANPREFIX)"
	@$(foreach BIN, $(BINS), \
		echo "... installing `basename $(BIN)`"; \
		cp -f $(BIN) $(DESTDIR)$(PREFIX)/$(BIN); \
	)
	cp -f man/git-*.1 $(DESTDIR)$(MANPREFIX)
	@mkdir -p $(PREFIX)/etc/bash_completion.d
	cp -f etc/bash_completion.sh $(PREFIX)/etc/bash_completion.d/git-goodies

man/%.html: man/%.md
	ronn \
		--manual "Git Goodies" \
		--html \
		--pipe \
		$< > $@

man/%.1: man/%.md
	ronn -r \
		--manual "Git Goodies" \
		--pipe \
		$< > $@

uninstall:
	@$(foreach BIN, $(BINS), \
		echo "... uninstalling $(DESTDIR)$(PREFIX)/$(BIN)"; \
		rm -f $(DESTDIR)$(PREFIX)/$(BIN); \
	)
	@$(foreach MAN, $(MAN_PAGES), \
		echo "... uninstalling $(DESTDIR)$(MANPREFIX)/$(MAN)"; \
		rm -f $(DESTDIR)$(MANPREFIX)/$(MAN); \
	)
	rm -f $(DESTDIR)/etc/bash_completion.d/git-goodies

clean: docclean

docclean:
	rm -f man/*.1
	rm -f man/*.html

.PHONY: docs clean docclean install uninstall