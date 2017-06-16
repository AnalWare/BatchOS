@echo off
cls
:boot
setlocal EnableExtensions EnableDelayedExpansion
color 0a
set version=0.2.2
set build=50
title BATCH OS build %build% ver %version%
set mypath=%cd% 

if exist val.ini (
	call Load
) else ( 
	goto boot
)
if %BootSeq%==BootSeqFalse (
	goto menu
)
:boot
echo Finding Kernel.........
ping -n 2 0.0.0.0 >nul
echo Kernel Found!
ping -n 2 0.0.0.0 >nul
echo Loading data
ping -n 2 0.0.0.0 >nul
cls
echo Loading data.
ping -n 2 0.0.0.0 >nul
cls
echo Loading data..
ping -n 2 0.0.0.0 >nul
cls
echo Loading data...
ping -n 2 0.0.0.0 >nul
cls
echo Loading data
ping -n 2 0.0.0.0 >nul
cls
echo Loading data.
ping -n 2 0.0.0.0 >nul
cls
echo Loading data..
ping -n 2 0.0.0.0 >nul
cls
echo Loading data...
ping -n 2 0.0.0.0 >nul
pause

if exist val.ini (
	call Load
	goto menu
) else ( 
	goto setup
)

:setup
cls            
echo ==============================
echo         BATCHOS SETUP
echo ==============================
echo.
echo What is your name?
echo.
set/p name=
echo.
cls
echo ==============================
echo         BATCHOS SETUP
echo ==============================
echo.
echo Hey! %name%, Welcome to BatchOS.
echo.
set color=0a
call Save.bat
pause

:menu
cls

color %color%
echo ================================
echo  Hello %name%
echo --------------------------------
echo  Current Directory:%mypath%
echo --------------------------------
echo  Version:%version% Build:%build%
echo ================================
echo  Please pick a App to continue
echo ================================
echo 1.Calculator
echo 2.Call
echo 3.Options
echo 4.CMD
echo 5.InfoBar
echo 6.Antivirus
echo 7.Music
echo 8.Calendar
echo 9.Assistaint
echo 10.Power Menu
echo ================================
set /p input=
if %input% == 1 goto calcmenu
if %input% == 2 goto call 
if %input% == 3 goto options
if %input% == 4 goto CMD
if %input% == 5 goto ReopenInfoBar
if %input% == 6 goto antivirus
if %input% == 7 goto Songs
if %input% == 8 goto calendar
if %input% == 9 goto Assistaint
if %input% == 10 goto Power
if %input% == 666 goto seizure
if /i %input% == shaun goto shit

rem PrayForSketchii
if /i %input% == #prayforsketchii goto sketchy

:invalid
cls
echo Option invalid
pause
goto menu

:Power
cls
echo =============================
echo            POWER
echo =============================
echo --BatchOS--
echo 1.Power off
echo 2.Restart
echo --Windows--
echo 3.Power off
echo 4.Restart
echo 5.Sleep
echo --Back--
echo 6.Back to menu
set /p input=
if %input% == 1 goto BatchOS-SD
if %input% == 2 goto BatchOS-Restart
if %input% == 3 goto Windows-SD
if %input% == 4 goto Windows-Restart
if %input% == 5 goto Windows-Sleep
if %input% == 6 goto menu
cls
echo =============================
echo            POWER
echo =============================
echo Option invalid
pause
goto Power

:BatchOS-SD
cls
echo =============================
echo            POWER
echo =============================
echo powering off.
tasklist /V /FI "WINDOWTITLE eq BATCHOS:Info" | find /I "BATCHOS:Info" >NUL && (taskkill /FI "WINDOWTITLE eq BATCHOS:Info" /T /F)
exit
:BatchOS-Restart
cls
echo =============================
echo            POWER
echo =============================
echo restarting.
tasklist /V /FI "WINDOWTITLE eq BATCHOS:Info" | find /I "BATCHOS:Info" >NUL && (taskkill /FI "WINDOWTITLE eq BATCHOS:Info" /T /F)
start OS
exit
:shit
cls
echo ERROR
echo I SHAT MYSELF
pause
goto menu

:Assistaint
cls
echo Program does not exist yet.
pause
goto menu

:info
cls
echo.=======================
echo        BATCH OS
echo.=======================
echo     DETAILS  
echo.
echo  Name Of User = %name%
echo.
echo  VERSION = %version%
echo.  
echo  Build = %build%
echo.
echo  Built from PURNJAY__OS_
echo.
echo.=========================
echo  @Copyright Amethyst.inc
echo.=========================
echo.
echo what do you want to do now

echo  1.See real specs
echo  2.Back to menu

set /p check= 

if %check% == 1 goto specs

if %check% == 2 goto options

if %check% ==  goto invalid-info
:invalid-info
cls
echo Option invalid
pause
goto info


     
:specs 
cls

systeminfo
pause
goto info

:calcmenu
cls
echo =======================
echo       CALCULATOR
echo =======================
echo Which Type of sum do you wish to use
echo =======================
echo 1. +
echo 2. -
echo 3. X
echo 4. /
echo 5.Menu
set /p type=
if %type%==1 goto calcplus
if %type%==2 goto calcminus
if %type%==3 goto calctimes
if %type%==4 goto calcdivide
if %type%==5 goto menu
cls
echo Option invalid
pause
goto calcmenu

:calcplus
cls
echo =======================
echo     + CALCULATOR +
echo =======================
echo.
echo Please choose the 2 numbers you wish to add
set /p num1=
set /p num2=
echo %num1%+%num2%?
set /a Answer=%num1%+%num2%
echo %Answer%
pause
cls
goto calcmenu
:calcminus
cls
echo =======================
echo     - CALCULATOR -
echo =======================
echo.
echo Please choose the 2 numbers you wish to subtract
set /p num1=
set /p num2=
echo %num1%-%num2%?
set /a Answer=%num1%-%num2%
echo %Answer%
pause
cls
goto calcmenu
:calctimes
cls
echo =======================
echo     x CALCULATOR x
echo =======================
echo.
echo Please choose the 2 numbers you wish to multiply
set /p num1=
set /p num2=
echo %num1%*%num2%?
set /a Answer=%num1%*%num2%
echo %Answer%
pause
cls
goto calcmenu
:calcdivide
cls
echo =======================
echo     \ CALCULATOR /
echo =======================
echo.
echo Please choose the 2 numbers you wish to divide
set /p num1=
set /p num2=
echo %num1%/%num2%?
set /a Answer=%num1%/%num2%
echo %Answer%
pause
cls
goto calcmenu


:CMD
cls
echo ======================================
echo To return to BatchOS, Type "exit"
echo ======================================
echo.
call cmd
goto menu
:ReopenInfoBar
cls
start InfoBar.bat
goto menu

:calendar
cls
echo Program does not exist yet.
pause
goto menu

:Songs
cls
echo Program does not exist yet.
pause
goto menu

:antivirus
cls
echo Program does not exist yet.
pause
goto menu
:sketchy
cls
echo We Hope you get well sketchy
echo #PrayForSketchii
pause
goto menu
:call
cls
echo ============================
echo            CALL
echo ============================
echo What Application do you want to open?
set /p input=
cls
call %input%
echo Returned
pause
cd %mypath%
call Load.bat
color %color%
goto menu

:seizure
title %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% 
echo %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% %RANDOM% 
color 1F
color 2E
color 35
color 29
color 13
color 9E
goto seizure

:options
cls
echo =============================
echo           OPTIONS
echo =============================
echo        Pick a Option
echo =============================
echo 1.Name
echo 2 Color
echo 3.Infomation
echo 4.Reset
echo 5.Debug [@echo off]
echo 6.Credits
echo 7.Boot
echo 8.Back To Menu

set /p input=
if %input% == 0 goto nofriends
if %input% == 1 goto NameChangeComfirm
if %input% == 2 goto ColorBack
if %input% == 3 goto info
if %input% == 4 goto resetConfirm
if %input% == 5 goto DebugComfirm
if %input% == 6 goto Credits
if %input% == 7 goto BootSettings
if %input% == 8 goto menu
cls
echo =============================
echo           OPTIONS
echo =============================
echo Option invalid
pause
goto options

:Credits
ping -n 1.5 0.0.0.0 >nul
cls
echo --
ping -n 1.5 0.0.0.0 >nul
cls
echo --C
ping -n 1.5 0.0.0.0 >nul
cls
echo --Cr
ping -n 1.5 0.0.0.0 >nul
cls
echo --Cre
ping -n 1.5 0.0.0.0 >nul
cls
echo --Cred
ping -n 1.5 0.0.0.0 >nul
cls
echo --Credi
ping -n 1.5 0.0.0.0 >nul
cls
echo --Credit
ping -n 1.5 0.0.0.0 >nul
cls
echo --Credits
ping -n 1.5 0.0.0.0 >nul
cls
echo --Credits-
ping -n 1.5 0.0.0.0 >nul
cls
echo --Credits--
echo +++++++++++++++++++
echo +Original by:     +
echo +PURNJAY          +
echo +++++++++++++++++++
ping -n 3 0.0.0.0 >nul
echo +++++++++++++++++++
echo +BatchOS by:      +
echo +Amethyst         +
echo +++++++++++++++++++
ping -n 3 0.0.0.0 >nul
echo +++++++++++++++++++
echo +Other stuff by:  +
echo +MopeDude         +
echo +++++++++++++++++++
ping -n 3 0.0.0.0 >nul
echo +++++++++++++++++++
echo +Greetz to:       +
echo +Sketchy-Cherry   +
echo +xDaFox           +
echo +akuma67          +
echo +LuckyFunk        +
echo +Opinior          +
echo +DJLOXMADRECORDS  +
echo +++++++++++++++++++
ping -n 4 0.0.0.0 >nul
echo Fucks to ardiium :)
ping -n 4 0.0.0.0 >nul
pause
goto options

:NameChangeComfirm
cls
echo =============================
echo           OPTIONS
echo =============================
echo This will change your Username, Are you sure you want to continue?
set /P c=[Y/N]?
if /I "%c%" EQU "Y" goto :namechange
if /I "%c%" EQU "N" goto :options
cls
goto NameChangeComfirm

:namechange
cls
echo =============================
echo           OPTIONS
echo =============================
echo What would you like to change your name to.
set /p name=
call Save.bat
echo Name Changed to %name%
pause
goto options
:ColorBack
cls
echo =============================
echo           OPTIONS
echo =============================
echo [HOW TO SET THE COLOR]
echo Color attributes are specified by TWO hex digits...
echo The first corresponds to the background; 
echo The second the foreground. Each digit can be any of the following values:
echo.
echo 0	=	Black	 	8	=	Gray
echo 1	=	Blue	 	9	=	Light Blue
echo 2	=	Green	 	A	=	Light Green
echo 3	=	Aqua	 	B	=	Light Aqua
echo 4	=	Red 	 	C	=	Light Red
echo 5	=	Purple	 	D	=	Light Purple
echo 6	=	Yellow	 	E	=	Light Yellow
echo 7	=	White	 	F	=	Bright White
echo You can type 10 to go back
echo =============================
echo What would you like the Background to be?
set /p BackgroundC=
if %BackgroundC% == 10 goto Options
if %BackgroundC% == 0 goto SelectFore
if %BackgroundC% == 1 goto SelectFore
if %BackgroundC% == 3 goto SelectFore
if %BackgroundC% == 4 goto SelectFore
if %BackgroundC% == 5 goto SelectFore
if %BackgroundC% == 6 goto SelectFore
if %BackgroundC% == 7 goto SelectFore
if %BackgroundC% == 8 goto SelectFore
if %BackgroundC% == 9 goto SelectFore
if /i %BackgroundC% == A goto SelectFore
if /i %BackgroundC% == B goto SelectFore
if /i %BackgroundC% == C goto SelectFore
if /i %BackgroundC% == D goto SelectFore
if /i %BackgroundC% == E goto SelectFore
if /i %BackgroundC% == F goto SelectFore
cls
echo =============================
echo           OPTIONS
echo =============================
echo Char Invalid.
pause >Change it (any key to continue)
goto ColorBack

:SelectFore
cls
echo =============================
echo           OPTIONS
echo =============================
echo [HOW TO SET THE COLOR]
echo Color attributes are specified by TWO hex digits... 
echo The first corresponds to the background; 
echo The second the foreground. Each digit can be any of the following values:
echo.
echo 0	=	Black	 	8	=	Gray
echo 1	=	Blue	 	9	=	Light Blue
echo 2	=	Green	 	A	=	Light Green
echo 3	=	Aqua	 	B	=	Light Aqua
echo 4	=	Red 	 	C	=	Light Red
echo 5	=	Purple	 	D	=	Light Purple
echo 6	=	Yellow	 	E	=	Light Yellow
echo 7	=	White	 	F	=	Bright White
echo You can type 10 to go back
echo =============================
echo What would you like the Foreground (Text) to be?
set /p ForegroundC=
if %ForegroundC% == 10 goto Options
if %ForegroundC% == 0 goto MakeColor
if %ForegroundC% == 1 goto MakeColor
if %ForegroundC% == 3 goto MakeColor
if %ForegroundC% == 4 goto MakeColor
if %ForegroundC% == 5 goto MakeColor
if %ForegroundC% == 6 goto MakeColor
if %ForegroundC% == 7 goto MakeColor
if %ForegroundC% == 8 goto MakeColor
if %ForegroundC% == 9 goto MakeColor
if /i %ForegroundC% == A goto MakeColor
if /i %ForegroundC% == B goto MakeColor
if /i %ForegroundC% == C goto MakeColor
if /i %ForegroundC% == D goto MakeColor
if /i %ForegroundC% == E goto MakeColor
if /i %ForegroundC% == F goto MakeColor
cls
echo =============================
echo           OPTIONS
echo =============================
echo Char Invalid.
pause >Change it (any key to continue)
goto ColorBack% == 10 goto ColorBack

:MakeColor
cls
echo =============================
echo           OPTIONS
echo =============================
set color=%BackgroundC%%ForegroundC%
color %color%
call Save.bat
echo Color Changed to %color%
pause
goto options

:BootSettings
cls
echo =============================
echo           OPTIONS
echo =============================
echo 1.Turn off the Boot Sequence
echo 2.Turn on the Boot Sequence
echo 3.Back
echo =============================
set /p input=
if %input% == 1 goto BootSeqOff
if %input% == 2 goto BootSeqOn
if %input% == 3 goto Options
cls
echo =============================
echo           OPTIONS
echo =============================
echo Option Invalid.
pause
goto BootSettings

:BootSeqOn
cls
set BootSeq=BootSeqTrue
call Save
echo =============================
echo           OPTIONS
echo =============================
echo Boot Sequence On, Next time you open BATCHOS you will see the boot sequence.
pause=Ok (Press any key to return)
goto BootSettings
:BootSeqOff
cls
set BootSeq=BootSeqFalse
call Save
echo =============================
echo           OPTIONS
echo =============================
echo Boot Sequence off, Next time you open BATCHOS you will be in the main menu.
pause=Ok (Press any key to return)
goto BootSettings
:nofriends
cls
echo =============================
echo           OPTIONS
echo =============================
echo You typed Zero or the letter 0
echo by any chance is that the amount of friends you have?
pause
goto options

:DebugComfirm
cls
echo =============================
echo           OPTIONS
echo =============================
echo.
echo This option will turn off echo and its only meant for powerusers]
echo and devs.
echo To turn echo back on you will need to restart the batch job.
echo Are you sure you want to continue?
set /P c=[Y/N]?
if /I "%c%" EQU "Y" goto Debug
if /I "%c%" EQU "N" goto options

:Debug
cls
@echo on
echo Debug mode on.
title BATCH OS build %build% ver %version% [DEBUG]
pause
goto menu

:resetConfirm
cls
echo =============================
echo           OPTIONS
echo =============================
echo This will reset all data, are you sure?
set /P c=[Y/N]?
if /I "%c%" EQU "Y" goto reset
if /I "%c%" EQU "N" goto options
cls
:reset
cls
del val.ini
ECHO 
echo =============================
echo            DONE!
echo =============================
pause
exit
