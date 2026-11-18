@echo off
title SmartPDF Backend Server - FastAPI
cd /d "%~dp0\backend"
echo [SmartPDF] Starting Enterprise Python Backend on http://0.0.0.0:8000 ...
"%~dp0\backend\.venv\Scripts\python.exe" -m uvicorn main:app --host 0.0.0.0 --port 8000 --reload
pause