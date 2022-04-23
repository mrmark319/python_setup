@ECHO OFF 
:: Check for Python Installation
python --version >NUL
IF %ERRORLEVEL% NEQ 0 ( 
   GOTO errorNoPython 
)

python -m pip --version >NUL
IF %ERRORLEVEL% NEQ 0 ( 
   GOTO errorNoPip 
)

:: Reaching here means Python is installed.
:: Execute stuff...
ECHO Successful!
@PAUSE
EXIT 0

:errorNoPython
ECHO Error: Python not installed
@PAUSE
EXIT 2

:errorNoPip
ECHO Error: Pip not found
@PAUSE
EXIT 2
