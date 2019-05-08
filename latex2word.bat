@echo off
rem Compilation file for Windows

rem Change name of main file in this line
SET MAIN_FILE=Template

rem Usually there's no need to edit beyond this point

rem Change to directory of batch file even if started from a share
pushd %~d0%~p0

SET ROOT=

IF EXIST _latexfiles GOTO LinkExists

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
SET ROOT=..\%ROOT%

echo Cannot find directory _latexfiles in any of the parent directories. Exiting.
goto DoPause

:ExitLoop
:LinkExists
IF NOT EXIST %ROOT%_latexfiles\mergeAll.pl GOTO NoMergeAll
perl %ROOT%_latexfiles\mergeAll.pl
if ERRORLEVEL 1 goto DoPause

:NoMergeAll
call %ROOT%_latexfiles\compile.cmd
if ERRORLEVEL 1 goto DoPause
call %ROOT%_latexfiles\compile-oo.cmd
if ERRORLEVEL 1 goto DoPause

:Exit
exit /b 0

:DoPause
pause
exit /b 1

