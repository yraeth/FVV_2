@echo off
rem Helper script that creates symbolic link to _latexfiles directory
rem Requires the mklink command (available in Windows 7)

rem Change to directory of batch file even if started from a share
pushd %~d0%~p0

SET ROOT=

IF NOT EXIST _latexfiles GOTO LinkMissing

rmdir _latexfiles
IF EXIST _latexfiles GOTO LinkExists

:LinkMissing
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop
SET ROOT=..\%ROOT%
IF EXIST %ROOT%_latexfiles GOTO ExitLoop

echo Cannot find directory _latexfiles in any of the parent directories. Exiting.
goto DoPause

:ExitLoop
mklink /j _latexfiles %ROOT%_latexfiles
if ERRORLEVEL 1 goto DoPause

:LinkExists
:DoPause
pause
exit /b 1

