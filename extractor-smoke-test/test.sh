#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $DIR

rm -rf testdb

semmle database create --language=go testdb --search-path ..
semmle dataset check testdb/db-go
semmle query run ../ql/test/library-tests/semmle/go/controlflow/ControlFlowGraph/ControlFlowNode_getASuccessor.ql --database=testdb --output=notracing-out.bqrs --search-path ..
semmle bqrs decode notracing-out.bqrs --format=csv --output=notracing-out.csv
diff -w -u <(sort notracing-out.csv) expected.csv

# Now do it again with tracing enabled

export SEMMLE_EXTRACTOR_GO_BUILD_TRACING=on

rm -rf testdb

semmle database create --language=go testdb --search-path ..
semmle dataset check testdb/db-go
semmle query run ../ql/test/library-tests/semmle/go/controlflow/ControlFlowGraph/ControlFlowNode_getASuccessor.ql --database=testdb --output=tracing-out.bqrs --search-path ..
semmle bqrs decode tracing-out.bqrs --format=csv --output=tracing-out.csv
diff -w -u <(sort tracing-out.csv) expected.csv
