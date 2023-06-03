PREFIX=/usr

build: asbits

asbits: asbits.c asbits.h
	gcc -g -o asbits asbits.c

clean:
	rm -f asbits

# https://www.gnu.org/software/make/manual/html_node/DESTDIR.html
install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 asbits $(DESTDIR)$(PREFIX)/bin/

