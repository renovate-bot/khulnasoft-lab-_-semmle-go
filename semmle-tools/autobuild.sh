#!/bin/sh

set -eu

if [ "$SEMMLE_PLATFORM" != "linux64" ] && [ "$SEMMLE_PLATFORM" != "osx64" ] ; then
    echo "Automatic build detection for $SEMMLE_PLATFORM is not implemented."
    exit 1
fi

# Some legacy environment variables used by the autobuilder.
LGTM_SRC="$(pwd)"
export LGTM_SRC

if [ "${SEMMLE_EXTRACTOR_GO_BUILD_TRACING:-}" = "on" ]; then
  echo "Tracing enabled"
  "$SEMMLE_EXTRACTOR_GO_ROOT/tools/$SEMMLE_PLATFORM/go-build-runner"
else
  "$SEMMLE_EXTRACTOR_GO_ROOT/tools/$SEMMLE_PLATFORM/go-autobuilder"
fi
