@echo off
title NGINX START-UP

CD C:\nginx

IF "%~1"=="" (
	goto START
) ELSE (
	IF "%~1"=="-s" (
		goto START
	) 
	IF "%~1"=="-r" (
		goto RESET
	) 
	IF "%~1"=="-k" (
		goto KILL
	) ELSE (
		ECHO ERROR: Usage ArchalyzeManager [-s] [-k]
		goto DONE
	)
)

:START
ECHO Setting things up...
ECHO Starting MySQL Server...
start .\mysql\bin\mysqld.exe
ECHO Done.
ECHO Starting PHP-CGI...
RunHiddenConsole.exe .\php\php-cgi.exe -b 127.0.0.1:9000 -c .\php\php.ini
ECHO Done.
ECHO Starting nginx...
start c:\nginx\nginx.exe
ECHO Done.
GOTO DONE

:RESET
ECHO Resetting nginx...
ECHO Stopping PHP-CGI...
taskkill /f /IM php-cgi.exe
ECHO Starting PHP-CGI...
RunHiddenConsole.exe .\php\php-cgi.exe -b 127.0.0.1:9000 -c .\php\php.ini
ECHO Done.
ECHO Stopping nginx...
taskkill /f /IM nginx.exe
ECHO Starting nginx...
start nginx
ECHO Done.
GOTO DONE

:KILL
ECHO Shutting things down nicely...
ECHO Stopping nginx...
taskkill /f /IM nginx.exe
ECHO Done.
ECHO Stopping PHP-CGI...
taskkill /f /IM php-cgi.exe
ECHO Done.
ECHO Stopping MySQL Server...
start .\mysql\bin\mysqladmin.exe --user="php_host" --password="archalyze101!" shutdown
ECHO Done.

:DONE
ECHO Finished.