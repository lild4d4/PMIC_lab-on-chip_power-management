@echo off

SETLOCAL

SET DESIGNS=%CD%
SET DOCKER_EXTRA_PARAMS=--rm -e DISPLAY=host.docker.internal:0

IF "%1"==""   ( echo No script given) && ( exit )

SET SCRIPT=start_%1.bat
echo Running %SCRIPT%

IF "%2"=="GF"   ( SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=GF   ) ELSE ^
IF "%2"=="SKYB" ( SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=SKYB ) ELSE ^
IF "%2"=="SKYA" ( SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=SKYA ) ELSE ^
SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=GF

IF "%1"=="jupyter" ( .\scripts\%SCRIPT% ) ELSE ^
IF "%1"=="vnc"     ( .\scripts\%SCRIPT% ) ELSE ^
IF "%1"=="x"       ( .\scripts\%SCRIPT% ) ELSE ^
echo Script dont exist
