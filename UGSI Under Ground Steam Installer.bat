@echo off
title Under_Ground_Steam_Installer
color 0a

echo Welcome to Under Ground Steam Installer (UGSI)!
timeout /t 2 >nul
cls

:: Set compatibility layer to run as invoker to avoid admin elevation
set __COMPAT_LAYER=RunAsInvoker

:: Create installation folder
mkdir "%~dp0Totally_Not_Steam_Files" >nul 2>&1

:: Download Steam installer if not found
if not exist "%~dp0SteamSetup.exe" (
    echo Downloading Steam installer...
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe', '%~dp0SteamSetup.exe')"
    timeout /t 3 >nul
)

cls
echo ================================
echo UGSI - Installation Instructions
echo ================================
echo.
echo 1^) The installer will launch shortly after reading press enter.
echo 2^) When the Steam Setup window appears click next and choose language and when you see a "Browse" button,
echo    click "Browse", navigate to this folder or copy and paste in search box the following:
echo      %~dp0Totally_Not_Steam_Files
echo    and select it as the installation directory.
echo 3^) When Windows prompts for admin permission,
echo    click "Cancel" or "Ignore". Do NOT enter any password.
echo 4^) Once installation completes, DO NOT use the desktop icon.
echo    Instead, open Steam and click the "Play" button for your games.
echo.
echo Press any key to start the installer...
pause >nul

:: Launch the installer via command line to avoid extra prompts
echo Launching Steam installer...
start /wait "" "%~dp0SteamSetup.exe"

cls
echo Installation finished!
echo Remember: Use the Steam client "Play" button to run games.
echo Thank you for using sh4dow412's UGSI!
timeout /t 5 >nul

:: Clean up the installer and self-delete this script
del "%~dp0SteamSetup.exe"
del "%~f0"

:: Empty the Recycle Bin using PowerShell
powershell.exe -Command "Clear-RecycleBin -Confirm:$false"

exit
