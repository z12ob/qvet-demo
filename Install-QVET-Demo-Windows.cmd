@echo off
setlocal EnableExtensions

set "QVET_VERSION=v1.3.0"
if not defined QVET_INSTALL_ROOT set "QVET_INSTALL_ROOT=%LOCALAPPDATA%\QVET\%QVET_VERSION%"
set "QVET_INSTALL_DIR=%QVET_INSTALL_ROOT%\QVET-Demo"
set "QVET_DOWNLOAD_URL=https://github.com/z12ob/qvet-demo/releases/download/%QVET_VERSION%/QVET-Demo-Windows.zip"
set "QVET_ARCHIVE=%TEMP%\QVET-Demo-Windows-%QVET_VERSION%.zip"

echo QVET Demo Installer %QVET_VERSION%
echo Installing to: %QVET_INSTALL_DIR%
echo.

if not exist "%QVET_INSTALL_ROOT%" mkdir "%QVET_INSTALL_ROOT%" || goto :failed

if defined QVET_PACKAGE_ARCHIVE (
  set "QVET_ARCHIVE=%QVET_PACKAGE_ARCHIVE%"
) else (
  echo Downloading the verified QVET Demo package...
  curl.exe --location --fail --retry 3 --output "%QVET_ARCHIVE%" "%QVET_DOWNLOAD_URL%" || goto :download_failed
)

if not exist "%QVET_ARCHIVE%" goto :download_failed

echo Extracting the complete package...
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -Command ^
  "$ErrorActionPreference='Stop'; Expand-Archive -LiteralPath $env:QVET_ARCHIVE -DestinationPath $env:QVET_INSTALL_ROOT -Force" || goto :failed

if not exist "%QVET_INSTALL_DIR%\requirements-demo.txt" goto :incomplete
if not exist "%QVET_INSTALL_DIR%\web\package.json" goto :incomplete

echo Preparing the local runtime. This can take several minutes on first use...
call "%QVET_INSTALL_DIR%\Setup QVET Demo.cmd" --auto || goto :failed

if not defined QVET_SKIP_SHORTCUTS (
  echo Creating desktop shortcuts...
  powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -Command ^
    "$ErrorActionPreference='Stop'; $desktop=[Environment]::GetFolderPath('Desktop'); $shell=New-Object -ComObject WScript.Shell; @(@('QVET Autonomy Demo','Run QVET Autonomy Demo.cmd'),@('QVET Traffic Demo','Run QVET Traffic Demo.cmd'),@('QVET Dashboard','Run QVET Dashboard.cmd'),@('Verify QVET Demo','Verify QVET Demo.cmd')) | ForEach-Object { $shortcut=$shell.CreateShortcut((Join-Path $desktop ($_[0] + '.lnk'))); $shortcut.TargetPath=(Join-Path $env:QVET_INSTALL_DIR $_[1]); $shortcut.WorkingDirectory=$env:QVET_INSTALL_DIR; $shortcut.Save() }" || goto :failed
)

echo.
echo QVET Demo is installed and ready.
echo Use the new desktop shortcuts to open each demo.
if not defined QVET_NONINTERACTIVE start "" explorer.exe "%QVET_INSTALL_DIR%"
goto :finish

:download_failed
echo.
echo The QVET package could not be downloaded.
echo Check the internet connection, then run this installer again.
goto :failed

:incomplete
echo.
echo The downloaded archive did not contain the complete QVET Demo package.
goto :failed

:failed
echo.
echo Installation did not complete. No ready marker was created.
if exist "%QVET_INSTALL_DIR%\logs\setup.log" echo Setup log: %QVET_INSTALL_DIR%\logs\setup.log
if not defined QVET_NONINTERACTIVE pause
exit /b 1

:finish
if not defined QVET_NONINTERACTIVE pause
exit /b 0
