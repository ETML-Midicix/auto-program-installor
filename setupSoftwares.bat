@ECHO OFF
CLS
c:
ECHO Program created by Midicix
ECHO.
if not exist %userprofile%\downloads\softwares\ (mkdir %userprofile%\downloads\softwares\)
cd %userprofile%\downloads\softwares\

ECHO Installation de l'installeur Visual Studio Code...
curl https://vscode.download.prss.microsoft.com/dbazure/download/stable/5437499feb04f7a586f677b155b039bc2b3669eb/VSCodeUserSetup-x64-1.90.2.exe -o vscode.exe -#
ECHO Installation de Visual Studio Code sur la machine...
vscode.exe /VERYSILENT /MERGETASKS=!runcode
ECHO.

ECHO Installation de l'installeur de firefox...
curl https://download-installer.cdn.mozilla.net/pub/firefox/releases/129.0.2/win32/fr/Firefox%%20Installer.exe -o firefox.exe -#
ECHO Installation de firefox sur la machine...
start firefox.exe -ms /S
ECHO.

ECHO Installation de l'installeur GitHub Desktop...
curl https://desktop.githubusercontent.com/releases/3.4.3-2170ce9b/GitHubDesktopSetup-x64.exe -o github.exe -#
ECHO Installation de GitHub sur la machine...
github.exe /silent
ECHO.

pause

curl https://raw.githubusercontent.com/ETML-Midicix/auto-program-installor/main/tools/setupVscAddons.bat -o setupVscAddons.bat -s
setupVscAddons.bat

pause

ECHO Delete all installer files
del %userprofile%\downloads\softwares\* /q
cd ..
rmdir %userprofile%\downloads\softwares