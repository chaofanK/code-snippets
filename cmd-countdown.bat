@echo off
title timer
set /p timer=countdown:
set time=%timer%
:loop
cls
set /a time=%time% -1
if %time%==0 goto end
echo %time% second(s)
ping localhost -n 2 >nul
cls
goto loop
:end
echo Time is up
pause
