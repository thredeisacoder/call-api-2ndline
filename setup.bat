@echo off
echo =========================================
echo   API Application - Automatic Setup
echo =========================================

:: Kiểm tra Node.js và npm
node -v >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Node.js is not installed. Downloading Node.js via Chocolatey...

    :: Kiểm tra xem Chocolatey đã được cài chưa
    choco -v >nul 2>nul
    IF %ERRORLEVEL% NEQ 0 (
        echo [!] Chocolatey is not installed. Installing Chocolatey...
        powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    )

    :: Cài đặt Node.js qua Chocolatey
    echo [*] Installing Node.js...
    choco install -y nodejs-lts
)

:: Kiểm tra lại Node.js và npm
node -v >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Node.js installation failed. Please check your system.
    pause
    exit /b
)

:: Khởi tạo npm và cài đặt thư viện
echo [*] Setting up the project...
npm init -y
npm install express ejs body-parser axios

:: Khởi chạy ứng dụng
echo [*] Starting the application...
npm start
pause
