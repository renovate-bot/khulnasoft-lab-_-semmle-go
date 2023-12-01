@echo off
SETLOCAL EnableDelayedExpansion

rem Some legacy environment variables for the autobuilder.
set LGTM_SRC=%CD%

if "%SEMMLE_EXTRACTOR_GO_BUILD_TRACING%"=="on" (
  echo "Tracing enabled"
  type NUL && "%SEMMLE_EXTRACTOR_GO_ROOT%/tools/%SEMMLE_PLATFORM%/go-build-runner.exe"
) else (
  type NUL && "%SEMMLE_EXTRACTOR_GO_ROOT%/tools/%SEMMLE_PLATFORM%/go-autobuilder.exe"
)
exit /b %ERRORLEVEL%

ENDLOCAL
