@echo off
title BATCHOS:Info
@mode con cols=30 lines=80
set mypath=%cd%
setlocal delayexpansion
cls
:time
call Load.bat
color %color%
echo =============================
echo        Infomation Bar
echo =============================
echo  HELLO %name%
echo =============================     
echo.
echo.      Color: %color%
echo.      
echo.      Time: %time%
echo.
echo.      Date: %date%
echo.
echo =============================
echo News
type news.txt
echo.
echo =============================
ping -n 2 0.0.0.0 >nul
cls
goto time