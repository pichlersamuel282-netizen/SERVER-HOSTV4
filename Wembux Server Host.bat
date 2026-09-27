@echo off
setlocal
set "HOST_BAT=%~dp0Wembux Server Host\Start-Wembux-Server.bat"
if not exist "%HOST_BAT%" set "HOST_BAT=%~dp0Start-Wembux-Server.bat"
if not exist "%HOST_BAT%" set "HOST_BAT=%~dp0Wembux-Server-Host-Portable\Start-Wembux-Server.bat"
if not exist "%HOST_BAT%" (
  echo Wembux server files are missing. Send and extract Wembux-Server-Host-Portable.zip,
  echo then open Start-Wembux-Server.bat from the extracted folder. The BAT alone cannot run the server.
  pause
  exit /b 1
)
call "%HOST_BAT%" %*
set "HOST_EXIT=%ERRORLEVEL%"
if not "%HOST_EXIT%"=="0" (
  echo Wembux server exited with error code %HOST_EXIT%. Read the message above.
  pause
)
exit /b %HOST_EXIT%
