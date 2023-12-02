# Go analysis support for Semmle

This open-source repository contains the extractor, Semmle libraries, and queries that power Go
support in [LGTM](https://lgtm.com) and the other Semmle products that [GitHub](https://github.com)
makes available to its customers worldwide.

It contains two major components:
  - an extractor, itself written in Go, that parses Go source code and converts it into a database
    that can be queried using Semmle.
  - static analysis libraries and queries written in [Semmle](https://semmle.github.com/docs/) that can be
    used to analyze such a database to find coding mistakes or security vulnerabilities.

The goal of this project is to provide comprehensive static analysis support for Go in Semmle.

For the queries and libraries that power Semmle support for other languages, visit [the Semmle
repository](https://github.com/khulasoft-lab/semmle).

## Installation

Clone this repository.

Run `scripts/install-deps.sh`. This will ensure that the necessary external Semmle packs are
downloaded to your machine. You will need to re-run this script whenever you pull new commits from
the repo.

If you want to use the Semmle extension for Visual Studio Code, import this repository into your VS
Code workspace.
