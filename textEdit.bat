@echo off
color 0a
set name=Untitled 1
title %name% - textEdit
:options
cls
echo ________________________________________
echo. (%name%)
echo               textEdit 1
echo ________________________________________
echo.
echo Press 0 to edit a document that already exists.
echo Press 1 to create a document.
echo Press 2 to edit the contents of your document.
echo Press 3 for help.
echo Press 4 to exit.

set /p you=">"
if %you%==1 goto 1
if %you%==2 goto 2
if %you%==3 goto help
if %you%==4 goto 4
if %you%==0 goto 0

cls
echo *********************************
echo Invalid number!
echo *********************************
ping localhost -n 2 >nul
goto options

:1
cls
echo ________________________________________
echo. (%name%)
echo               textEdit 1
echo ________________________________________
echo. 
echo Name Your Document .. eg. 'hello.txt' or 'hello.bat'
set /p name=">"
title %name% - textEdit 1

goto options

:2
cls
echo ________________________________________
echo. (%name%)
echo               textEdit 1
echo ________________________________________
echo. 
echo To add another line to your text press enter.
echo.
echo Cannot use symbols:"   > < |   "
echo.
set /p content=">"	
echo %content%>>%name%
cls
echo Save Successful!
ping localhost -n 2 >nul
goto 2

:help
cls
echo ________________________________________
echo. (%name%)
echo               textEdit 1
echo ________________________________________
echo. 
echo.
pause
goto options

:4
cls
call OS

:0
cls
echo ________________________________________
echo. (%name%)
echo               textEdit 1
echo ________________________________________
echo. 
echo Type in the name eg. 'hello.txt' or 'hello.bat'
echo The file has to be in the same directory as my notpad!
set /p edit=">"
edit %edit%
goto options
