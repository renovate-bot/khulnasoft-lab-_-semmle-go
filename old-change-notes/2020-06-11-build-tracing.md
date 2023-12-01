lgtm,codescanning
* The Go extractor now supports build tracing, allowing users to supply a build command when
  creating databases with the Semmle CLI or via configuration. It currently only supports projects
  that use Go modules. To opt-in, set the environment variable `SEMMLE_EXTRACTOR_GO_BUILD_TRACING`
  to `on`, or supply a build command.
