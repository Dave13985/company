@echo off
:: Self-elevate
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -FilePath '%0' -ArgumentList 'am_admin' -Verb RunAs"
    exit /b
)
:: Install Level agent silently
msiexec /i "https://downloads.level.io/level.msi" LEVEL_API_KEY=wSAJ5FFmU9VAbv4kCMFmRzZU /qn