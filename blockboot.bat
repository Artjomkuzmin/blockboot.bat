@echo off
title Blockboot

:menu
cls
echo --- Blockboot Menu ---
echo 1. Shut Down
echo 2. Reboot
echo 3. Set Date and Time
echo 4. Open Windows96 Website (Full Screen)
echo 5. Toggle CPU Mode
echo 6. Toggle GPU Mode
echo 7. Exit

set /p choice=Enter your choice (1/2/3/4/5/6/7): 

if "%choice%"=="1" (
    shutdown /s /f /t 0
) else if "%choice%"=="2" (
    shutdown /r /f /t 0
) else if "%choice%"=="3" (
    echo Enter the date (YYYY-MM-DD):
    set /p newdate=
    date %newdate%
    echo Enter the time (HH:MM:SS):
    set /p newtime=
    time %newtime%
    goto menu
) else if "%choice%"=="4" (
    start https://windows96.net
    goto menu
) else if "%choice%"=="5" (
    echo Toggling CPU Mode...
    rem Add CPU mode toggle code here
    pause
    goto menu
) else if "%choice%"=="6" (
    echo Toggling GPU Mode...
    rem Add GPU mode toggle code here
    pause
    goto menu
) else if "%choice%"=="7" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
