@echo off
title SmartPDF Frontend Server - Vite React
cd /d "%~dp0\frontend"
echo [SmartPDF] Starting React + Tailwind Frontend on http://localhost:5173 ...
npm run dev -- --host 0.0.0.0 --port 5173
pause