CC      	= gcc
WARN    	= -W -Wall
PROGRAM    	= asbits
prefix		= /usr

.PHONY: build clean dist distclean install uninstall

build: $(PROGRAM)

$(PROGRAM): $(PROGRAM).c $(PROGRAM).h
	$(CC) $(WARN) -o $(PROGRAM) $(PROGRAM).c

clean:
	rm -f $(PROGRAM)

dist:
	tar -czvf $(PROGRAM).tar.gz $(PROGRAM).c $(PROGRAM).h LICENSE Makefile

distclean:
	rm -f $(PROGRAM).tar.gz

# https://www.gnu.org/software/make/manual/html_node/DESTDIR.html
install:
	install -D -m 0755 $(PROGRAM) $(DESTDIR)$(prefix)/bin/$(PROGRAM)

uninstall:
	rm -f $(DESTDIR)$(prefix)/bin/$(PROGRAM)

