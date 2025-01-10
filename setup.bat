@echo off
echo =========================================
echo   API Application - Automatic Setup
echo =========================================

:: Kiểm tra Node.js và npm
node -v >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Node.js is not installed. Downloading Node.js installer...
    powershell -Command "Start-Process 'https://nodejs.org/dist/v20.12.1/node-v20.12.1-x64.msi' -Wait"
    echo [!] Please install Node.js and re-run this script.
    pause
    exit /b
)

Start env.bat

