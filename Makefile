CC      	= gcc
WARN    	= -W -Wall
TARGET		= asbits
PREFIX		= /usr

.PHONY: build clean install

build: $(TARGET)

$(TARGET): $(TARGET).c $(TARGET).h
	$(CC) $(WARN) -o $(TARGET) $(TARGET).c

clean:
	rm -f $(TARGET)

# https://www.gnu.org/software/make/manual/html_node/DESTDIR.html
install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 asbits $(DESTDIR)$(PREFIX)/bin/

