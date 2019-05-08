@echo off
rem Cleanup file for Windows

rem Change to directory of batch file even if started from a share
pushd %~d0%~p0

del *.synctex.gz *.pdf *.fmt *.aux *.bbl *.blg *.fdb_latexmk *.fls *.gz *.lof *.lot *.log *.out *.pdf *.toc