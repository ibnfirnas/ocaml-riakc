.PHONY: all lib install examples clean test

all: lib examples

lib:
	$(MAKE) -C lib

install: lib
	$(MAKE) -C lib install

examples: lib
	$(MAKE) -C examples

test: lib
	$(MAKE) -C lib test
	$(MAKE) -C tests test

clean:
	$(MAKE) -C lib clean
	$(MAKE) -C examples clean

