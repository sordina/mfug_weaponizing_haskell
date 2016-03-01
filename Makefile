
.PHONY: help
help:
	@echo
	@echo "Targets:"
	@echo
	@grep '^[a-z]' Makefile | sed 's/^/  /; s/://'
	@echo

.PHONY: build
build:
	echo done

