@echo off
title Disable Windows10 Services - by KSK
REM Written by KangSeungkwan - 20201117
REM This batch diables services in Windows10.

ECHO -------------------------------------------
ECHO |       Windows10 Service Minimizer       |
ECHO |              Made by KangSK             |
ECHO -------------------------------------------
ECHO/
ECHO Disabling services might break your system.
ECHO    To ensure safety, select Manual mode.   
ECHO/


REM Start of main program
SETLOCAL ENABLEDELAYEDEXPANSION

set SERVICE_NAME="AGMService" "AGSService" "AdobeUpdateService"
set SERVICE_DISP="Adobe Genuine Moniter Service" "Adobe Genuine Software Integrity Service" "Adobe Update Service"

REM Choose whether disable or just prevent auto-runs
CHOICE /C DM /N /M "Will you (D)isable or change to (M)anual mode?"
IF	ERRORLEVEL 1 SET MODE=0:
IF	ERRORLEVEL 2 SET MODE=1:


REM End of program