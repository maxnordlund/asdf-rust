#!/usr/bin/env bash

ASDF_PLUGIN_PATH="${ASDF_PLUGIN_PATH:-"$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." &>/dev/null && pwd)"}"

# shellcheck source=../../bin/exec-env
source "$ASDF_PLUGIN_PATH/bin/exec-env"
export PATH="$CARGO_HOME/bin:$PATH"

rustup "$@"
