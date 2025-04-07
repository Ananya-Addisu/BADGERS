@echo off
start /min wscript.exe "%~dp0volume_control.vbs"
timeout /t 2 /nobreak > nul
start "" "%~dp0badgers.mp4" 