#!/usr/bin/env bash

# shellcheck source=../../bin/exec-env
source "$(dirname "$ASDF_CMD_FILE")/../../bin/exec-env"

PATH="$CARGO_HOME/bin:$PATH" rustup $@