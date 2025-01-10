@echo off
echo =========================================
echo       Starting API Application
echo =========================================

:: Kiểm tra Node.js và npm
node -v >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Node.js is not installed. Please install it first!
    pause
    exit /b
)

:: Khởi chạy ứng dụng
node app.js
pause
