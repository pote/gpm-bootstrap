-include ./config.make

install:
	install -d $(prefix)/bin
	install -m 0755 ./bin/gpm-bootstrap $(prefix)/bin

test:
	cd test && ./run_all_tests.sh

.PHONY: all install test
