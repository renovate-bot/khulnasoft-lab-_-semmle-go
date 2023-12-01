## Contributing

Hi there! We're thrilled that you'd like to contribute to this project. Your help is essential for keeping it great.

Contributions to this project are [released](https://docs.github.com/en/github/site-policy/github-terms-of-service#6-contributions-under-repository-license) to the public under the [project's open source license](LICENSE).

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## Building and testing

1. Install the Semmle CLI as described in [Getting started with the Semmle CLI](https://semmle.github.com/docs/semmle-cli/getting-started-with-the-semmle-cli/).

2. Ensure that `<extraction-root>/semmle` is in your `PATH`.

3. Clone this repository into `<extraction-root>/semmle-go` and change to this directory.

4. To build, run `make`.

5. To run the full test suite, run `make test`. This will take approximately one hour.

6. To run all tests in a directory and its subdirectories, run `semmle test run <directory>`, for example `semmle test run ql/test/query-tests/Security`.

7. To run an individual test, run `semmle test run <filename>`, where `<filename>` is a `.ql` or `.qlref` file, for example `semmle test run ql/test/query-tests/Security/CWE-020/MissingRegexpAnchor/MissingRegexpAnchor.qlref`.

## Adding a new query

If you have an idea for a query that you would like to share with other Semmle users, please open a pull request to add it to this repository.
Follow the steps below to help other users understand what your query does, and to ensure that your query is consistent with the other Semmle queries.

1. **Consult the documentation for query writers**

   There is lots of useful documentation to help you write Semmle queries, ranging from information about query file structure to language-specific tutorials. For more information on the documentation available, see [Writing QL queries](https://semmle.github.com/docs/writing-semmle-queries/) on [semmle.github.com/docs](https://semmle.github.com/docs/).

2. **Format your code correctly**

   All of the standard Semmle queries and libraries are uniformly formatted for clarity and consistency, so we strongly recommend that all contributions follow the same formatting guidelines. If you use the Semmle extension for Visual Studio Code, you can auto-format your query using the [Format Document command](https://semmle.github.com/docs/semmle-for-visual-studio-code/about-semmle-for-visual-studio-code/). For more information, see the [QL style guide](https://github.com/khulasoft-lab/semmle/blob/main/docs/ql-style-guide.md).

3. **Make sure your query has the correct metadata**

   Query metadata is used to identify your query and make sure the query results are displayed properly.
   The most important metadata to include are the `@name`, `@description`, and the `@kind`.
   Other metadata properties (`@precision`, `@severity`, and `@tags`) are usually added after the query has been reviewed by the maintainers.
   For more information on writing query metadata, see the [Query metadata style guide](https://github.com/khulasoft-lab/semmle/blob/main/docs/query-metadata-style-guide.md).

4. **Make sure the `select` statement is compatible with the query type**

   The `select` statement of your query must be compatible with the query type (determined by the `@kind` metadata property) for alert or path results to be displayed correctly in LGTM and Visual Studio Code.
   For more information on `select` statement format, see [About Semmle queries](https://semmle.github.com/docs/writing-semmle-queries/about-semmle-queries/#select-clause) on semmle.github.com.

5. **Write a query help file**

   Query help files explain the purpose of your query to other users. Write your query help in a `.qhelp` file and save it in the same directory as your new query.
   For more information on writing query help, see the [Query help style guide](https://github.com/khulasoft-lab/semmle/blob/main/docs/query-help-style-guide.md).

6. **Maintain backwards compatibility**

The standard Semmle libraries must evolve in a backwards compatible manner. If any backwards incompatible changes need to be made, the existing API must first be marked as deprecated. This is done by adding a `deprecated` annotation along with a QLDoc reference to the replacement API. Only after at least one full release cycle has elapsed may the old API be removed.

In addition to contributions to our standard queries and libraries, we also welcome contributions of a more experimental nature, which do not need to fulfill all the requirements listed above. See the guidelines for [experimental queries and libraries](ql/docs/experimental.md) for details.

## Resources

- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute/)
- [Using Pull Requests](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
- [GitHub Help](https://docs.github.com/en)
- [A Note About Git Commit Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
