@ECHO OFF
CLS
c:
ECHO Program created by Midicix
ECHO.

ECHO Installation des extensions Visual Studio Code...
code --install-extension ms-python.python --force

start /b "" cmd /c del "%~f0"&exit /b