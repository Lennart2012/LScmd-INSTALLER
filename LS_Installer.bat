@echo off
if not exist "C:\users\%username%\documents\LS" mkdir C:\users\%username%\documents\LS
if exist "C:\Users\%username%\Documents\LS\.project1" (
	cls
	echo App already installed.
	echo Do you like to uninstall it run in the terminal LS.uninstal
	pause
	exit
)
start msedge.exe "https://drive.google.com/uc?export=download&id=1sV4eVSY-S7AKwGHS96erdkDWKNfUgWPK"
timeout /t 5 /nobreak
taskkill /IM  msedge.exe
copy Install.zip C:\Users\%username%\Documents\LS
powershell.exe -NoP -NonI -Command "Expand-Archive 'C:\Users\%Username%\Documents\LS\Install.zip' 'C:\Users\%username%\Documents\LS\.project1\'"
del C:\Users\%Username%\Documents\LS\Install.zip
copy "C:\Users\%Username%\Documents\LS\.project1\LsCMD.lnk" "C:/Users\%Username%\Desktop"
del Install.zip
echo Your App has benn installed.
echo Press a key to start the app.
echo Or press ALT + F4 to exit the installer
pause
start C:\Users\%username%\Documents\LS\.project1\LsCMD.lnk
exit