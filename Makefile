SH_SRCFILES = $(shell git ls-files "bin/*")

.PHONY: format
format:
	shfmt --write $(SH_SRCFILES)

.PHONY: check-format
check-format:
	shfmt --diff $(SH_SRCFILES)

.PHONY: lint
lint:
	shellcheck --source-path=SCRIPTDIR $(SH_SRCFILES)
