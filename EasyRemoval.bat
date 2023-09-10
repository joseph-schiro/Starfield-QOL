@echo off

echo:
echo Modpack removal initiated...
echo:

REM Define your list of items
set "list=StarfieldCustom.ini EasyBackup.bat EasyInstall.bat EasyRemoval.bat Extras"

REM Define your list of files to remove
set "list=StarfieldCustom.ini EasyBackup.bat EasyInstall.bat EasyRemoval.bat"

REM Set the target directory
set "targetDirectory=%userprofile%\Documents\My Games\Starfield\"

REM Check if the target directory exists
if not exist "%targetDirectory%" (
    echo:
    echo [!] Target directory not found: "%targetDirectory%"
    echo:
    pause
    exit /b 1
)

REM Remove each file from the list in the target directory
for %%f in (%list%) do (
    if exist "%targetDirectory%\%%f" (
        del "%targetDirectory%\%%f" /q
    )
)

REM Check if the "Extras" directory exists in the target directory
set "extrasDirectory=%targetDirectory%\Extras"
if exist "%extrasDirectory%" (
    rd /s /q "%extrasDirectory%"
)


echo:
echo Files removed from "%targetDirectory%" successfully.
echo:

REM Set the target data directory
set "dataDirectory=%userprofile%\Documents\My Games\Starfield\Data"

REM Set the source data directory
set "sourceDataDirectory=..\Starfield - QoL Mod Pack [VERSION 1.0]\Original Data - DO NOT DELETE"

echo:
echo Restoring Data directory...
echo:

REM Check if the source data directory exists
if not exist "%sourceDataDirectory%" (
    echo:
    echo [!] Source data directory not found: "%sourceDataDirectory%"
    echo:
    pause
    exit /b 1
)

REM Check if the target data directory exists, and create it if not
if not exist "%dataDirectory%" (
    mkdir "%dataDirectory%"
)

REM Clear the contents of the target data directory and its subdirectories
for /d %%d in ("%dataDirectory%\*") do (
    rd /s /q "%%d"
)

REM Delete the files in the target data directory
for /f %%f in ('dir /b "%dataDirectory%\*"') do (
    del "%dataDirectory%\%%f" /q
)

REM Copy the contents of the source directory to the target directory
xcopy "%sourceDataDirectory%\*" "%dataDirectory%\" /e /i /y



echo:
echo Modpack data removed successfully.
echo:

REM Add a pause for debugging (remove this later)
pause
