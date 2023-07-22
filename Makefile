SH_SRCFILES = $(shell git ls-files "bin/*" "lib/commands/*")

.PHONY: format
format:
	shfmt --write $(SH_SRCFILES)

.PHONY: check-format
check-format:
	shfmt --diff $(SH_SRCFILES)

.PHONY: lint
lint:
	shellcheck $(SH_SRCFILES)
