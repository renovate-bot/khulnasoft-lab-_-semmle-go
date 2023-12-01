#!/bin/sh

set -eu

if [ "$SEMMLE_PLATFORM" != "linux64" ] && [ "$SEMMLE_PLATFORM" != "osx64" ] ; then
    echo "Automatic build detection for $SEMMLE_PLATFORM is not implemented."
    exit 1
fi

"$SEMMLE_EXTRACTOR_GO_ROOT/tools/$SEMMLE_PLATFORM/go-extractor" -mod=vendor ./...
"$SEMMLE_EXTRACTOR_GO_ROOT/tools/pre-finalize.sh"
