@echo off
title Minecraft Mod Sync (Portable Git)

echo ===========================================
echo   Updating Minecraft Mods / Config / Packs
echo     Using portable Git (no install needed)
echo ===========================================
echo.

:: ポータブルGitのパスを追加
set "GIT_PATH=%~dp0git\bin"
set PATH=%GIT_PATH%;%PATH%

echo Checking Git version...
git --version || (
    echo ERROR: Portable Git not found in "git\" folder.
    echo Please make sure the "git" folder exists next to update.bat.
    pause
    exit /b
)

echo.
echo Pulling latest files from GitHub repository...
echo -------------------------------------------

git pull

echo.
echo Update complete!
echo You can now start Prism Launcher.
echo -------------------------------------------
pause
