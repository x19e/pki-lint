# Top-level Makefile

SHELL:=/bin/bash

LINTS_DIR="lints"

all:
	pushd ${LINTS_DIR} && ${MAKE} all && popd
clean:
	pushd ${LINTS_DIR} && ${MAKE} clean && popd
list:
	@grep -Po '^[^#[:space:]|SHELL|PATH|$$][a-zA-Z].*(?=\:)' Makefile | grep -v UNAME | sort
test:
	pushd ${LINTS_DIR} && ${MAKE} test && popd
check:
	shellcheck build.sh lint.sh
