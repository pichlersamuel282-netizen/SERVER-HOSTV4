@echo off
setlocal
call "%~dp0Wembux Server Host\Start-Wembux-Server.bat" %*
exit /b %errorlevel%
