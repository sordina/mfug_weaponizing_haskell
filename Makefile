
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

.PHONY: upload
upload:
	# aws --profile=sordina s3 mb s3://sordina.presentations/
	aws --profile=sordina s3 cp --recursive --follow-symlinks --exclude=.git --exclude=.git/* --acl=public-read . s3://sordina.presentations/mfug_weaponized_haskell_20160303
