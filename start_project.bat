@echo off
title SmartPDF NEXORA AI - Launch Control
color 0C
echo =====================================================================
echo         SmartPDF NEXORA AI - Full Stack Platform Launcher
echo =====================================================================
echo.
echo [1/2] Verifying Python Backend Server (Port 8000)...
start "SmartPDF Backend" /min cmd /c "cd /d "%~dp0backend" && "%~dp0backend\.venv\Scripts\python.exe" -m uvicorn main:app --host 0.0.0.0 --port 8000"

echo [2/2] Verifying React Frontend Server (Port 5173)...
start "SmartPDF Frontend" /min cmd /c "cd /d "%~dp0frontend" && npm run dev -- --host 0.0.0.0 --port 5173"

echo.
echo =====================================================================
echo Servers are running!
echo Access Portal: http://localhost:8000  (Primary Unified Platform)
echo Dev Portal:    http://localhost:5173  (Vite Fast Reload)
echo API Docs:      http://localhost:8000/docs
echo =====================================================================
echo.
timeout /t 3 /nobreak >nul
start http://localhost:8000
exit
