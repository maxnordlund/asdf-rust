#!/usr/bin/env bash

# shellcheck source=../../bin/exec-env
source "$(dirname "$0")/../../bin/exec-env"

PATH="$CARGO_HOME/bin:$PATH" rustup "$@"
