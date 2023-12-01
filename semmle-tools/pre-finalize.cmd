@echo off
SETLOCAL EnableDelayedExpansion

if NOT "%SEMMLE_EXTRACTOR_GO_EXTRACT_HTML%"=="no" (
  type NUL && "%SEMMLE_DIST%/semmle.exe" database index-files ^
                        --working-dir=. ^
                        --include-extension=.htm ^
                        --include-extension=.html ^
                        --include-extension=.xhtm ^
                        --include-extension=.xhtml ^
                        --include-extension=.vue ^
                        --size-limit 10m ^
                        --language html ^
                        -- ^
                        "%SEMMLE_EXTRACTOR_GO_WIP_DATABASE%" ^
    || echo "HTML extraction failed; continuing"

  exit /b %ERRORLEVEL%
)
