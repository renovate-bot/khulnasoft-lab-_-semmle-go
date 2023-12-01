@echo off
SETLOCAL EnableDelayedExpansion

type NUL && "%SEMMLE_EXTRACTOR_GO_ROOT%/tools/%SEMMLE_PLATFORM%/go-extractor.exe" -mod=vendor ./...
type NUL && "%SEMMLE_EXTRACTOR_GO_ROOT%/tools/pre-finalize.cmd"
exit /b %ERRORLEVEL%

ENDLOCAL
