@echo off
setlocal

echo:
echo Backup initiating...
echo:

rem Set the source directory (your modpack directory)
set "destinationDirectory=%userprofile%\Documents\My Games\Starfield - BACKUP"

rem Set the destination directory (the user's Documents folder)
set "sourceDirectory=%userprofile%\Documents\My Games\Starfield"

rem Check if the source directory exists
if not exist "%sourceDirectory%" (
    echo:
    echo [!] Source directory not found.
    echo:
    pause
    exit /b 1
)

rem Check if the destination directory exists, and create it if not
if not exist "%destinationDirectory%" (
    mkdir "%destinationDirectory%"
)

rem Copy the contents of the source directory to the destination directory
xcopy "%sourceDirectory%\*" "%destinationDirectory%\" /e /i /y

echo:
echo Backup complete.
echo:
echo Backup Location: %destinationDirectory%
echo:

pause
exit /b 0
