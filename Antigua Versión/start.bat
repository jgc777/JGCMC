@echo off
title JGCMC
echo.
echo.
echo Bienvenido a JGCMC ( http://github.com/Jgc777/JGCMC ).
echo.
echo.
echo Para cancelar, cierre la ventana.
pause
taskkill /F /IM playit.exe /T
set /p RAM=<RAM
set /a "RAM=%RAM%*1024"
start /min playit.exe
cls
java -Xmx%RAM%M -Xms%RAM%M -jar paper.jar --nogui
taskkill /F /IM playit.exe /T
exit