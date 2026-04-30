#!/bin/bash

# Abort on errors.
set -eo pipefail

# Abort on unset variables.
set -u

# Enable debug tracing if TRACE environment variable is set.
[[ -n "${TRACE:-}" ]] && set -x

uv python install
uv sync

uv run pre-commit install --install-hooks

if [[ -f ".devcontainer/post_create.local.sh" ]]; then
    source ".devcontainer/post_create.local.sh"
fi
