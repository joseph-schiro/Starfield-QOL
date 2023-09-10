@echo off
setlocal

echo:
echo Modpack  initiated...
echo:

rem Set the source directory (your modpack directory)
set "sourceDirectory=..\Starfield - QoL Mod Pack [VERSION 1.0]"

rem Set the destination directory (the user's Documents folder)
set "destinationDirectory=%userprofile%\Documents\My Games\Starfield"

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

REM Define your list of files to remove
set "removeList=EasyBackup.bat EasyInstall.bat EasyRemoval.bat"

REM Remove each file from the list in the target directory
for %%f in (%removeList%) do (
    if exist "%destinationDirectory%\%%f" (
        del "%destinationDirectory%\%%f" /q
    )
)


echo:
echo Modpack installed successfully.
echo:

pause
exit /b 0
