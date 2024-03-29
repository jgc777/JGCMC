@echo off
cls
title JGCMC
echo.
echo.
echo Bienvenido a JGCMC ( http://github.com/Jgc777/JGCMC ).
echo.
echo.
echo Cierre la ventana para cancelar . . .
pause
taskkill /F /IM playit.exe /T
cd jgcmc
move 7za.exe ..
move archivos.zip ..
cd ..
7za x -aos archivos.zip
rmdir /s /q jgcmc
del /q 7za.exe
del /q archivos.zip
set /p RAM=<RAM
set /a "RAM=%RAM%*1024"
start /min playit.exe
cls
start /b /wait ./jdk/bin/java.exe -Xmx%RAM%M -Xms%RAM%M -jar server.jar --nogui
taskkill /F /IM playit.exe /T
exit