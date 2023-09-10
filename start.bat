@echo off

SETLOCAL

SET DESIGNS=%CD%
SET DOCKER_EXTRA_PARAMS=--rm

IF "%1"=="" (
  echo A script must be given
  CALL :help
  exit 
)

echo Running start_%1.bat

IF "%2"=="GF"   ( SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=GF   ) ELSE ^
IF "%2"=="SKYA" ( SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=SKYA ) ELSE ^
IF "%2"=="SKYB" ( SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=SKYB ) ELSE ^
SET DOCKER_EXTRA_PARAMS=%DOCKER_EXTRA_PARAMS% -e USING=GF

IF "%1"=="jupyter" ( 
  SET DOCKER_EXTRA_PARAMS=-e DISPLAY=host.docker.internal:0
  .\scripts\start_jupyter.bat

) ELSE IF "%1"=="vnc" (
  .\scripts\start_vnc.bat

) ELSE IF "%1"=="x" (
  SET DOCKER_EXTRA_PARAMS=-e DISPLAY=host.docker.internal:0
  .\scripts\start_x.bat

) ELSE (
  echo The script doesnt exist
  CALL :help 
)


EXIT
:help
  echo Help:
  echo .\start.bat ^<script^> [pdk]
  echo   script: Specific functionality to be enabled. {x ^| vnc ^| jupyter}
  echo   pdk: One of the available. {GF ^| SKYA ^| SKYB}
EXIT /B 0