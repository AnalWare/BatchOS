@echo off
if exist val.ini (
	goto save
) else (
	dir /b > val.ini
)

:save
>val.ini cls
(echo %name%)> val.ini
(echo %color%)>> val.ini
(echo %BootSeq%)>> val.ini

exit /b 