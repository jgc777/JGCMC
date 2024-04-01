@echo off
cls
title Compilador de JGCMC
cls
echo COMPILADOR JGCMC
echo.
echo Descargando 7zip...
echo.
mkdir jgcmc
cd jgcmc
mkdir 7z
cd 7z
curl -O https://www.7-zip.org/a/7za920.zip
tar -xf 7za920.zip
move 7za.exe ..
cd ..
rmdir /s /q 7z
cd ..
cls
echo COMPILADOR JGCMC
echo.
echo 7zip cli descargado
echo Descargando jar de Vanilla 1.16.5...
echo.
cd archivos_
mkdir cache
cd cache
curl -O https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
rename server.jar mojang_1.16.5.jar
cd ..
cd ..
cls
echo COMPILADOR JGCMC
echo.
echo 7zip cli descargado
echo Jar de Vanilla 1.16.5 descargado
echo Descargando Amazon Correto JDK 16
echo.
cd archivos_
curl -O https://corretto.aws/downloads/latest/amazon-corretto-16-x64-windows-jdk.zip
rename amazon-corretto-16-x64-windows-jdk.zip jdk.zip
start /wait /b ../jgcmc/7za.exe x jdk.zip
del /q jdk.zip
move jdk16.0.2_7 jdk
cls
echo COMPILADOR JGCMC
echo.
echo 7zip cli descargado
echo Jar de Vanilla 1.16.5 descargado
echo Amazon Correto JDK 16 descargado
echo Descargando PaperMC 1.16.5...
echo.
curl -O https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar
rename paper-1.16.5-794.jar server.jar
cls
echo COMPILADOR JGCMC
echo.
echo 7zip cli descargado
echo Jar de Vanilla 1.16.5 descargado
echo Amazon Correto JDK 16 descargado
echo PaperMC 1.16.5 descargado
echo Comprimiendo...
echo.
start /wait /b ../jgcmc/7za.exe a -tzip archivos *
start /wait /b ../jgcmc/7za.exe a -tzip archivos cache
start /wait /b ../jgcmc/7za.exe a -tzip archivos jdk
start /wait /b ../jgcmc/7za.exe a -tzip archivos jgcmc-licencias
start /wait /b ../jgcmc/7za.exe a -tzip archivos plugins
move archivos.zip ../jgcmc
cd ..
cls
echo COMPILADOR JGCMC
echo.
echo 7zip cli descargado
echo Amazon Correto JDK 16 descargado
echo PaperMC 1.16.5 descargado
echo Comprimido
echo Compilando...
echo.
Bat_To_Exe_Converter /bat jgcmc.bat /exe JGCMC.exe /icon icono.ico /include jgcmc /x64 /workdir 0 /extractdir 0 /deleteonexit /overwrite /attributes /fileversion 1.20.5.0 /productversion 1.20.5.0 /productname JGCMC /originalfilename JGCMC.exe /description "Un simple servidor Minecraft portable e independiente compatible con plugins y todas las versiones, con todo lo que necesitas." /company Jgc7
move /y JGCMC.exe %userprofile%\JGCMC\
echo Se ha generado JGCMC.exe en "%userprofile%\JGCMC\".
echo.
echo Pulse una tecla para limpiar y finalizar.
pause
echo.
echo Limpiando...
echo.
rmdir /s /q jgcmc
cd archivos_
rmdir /q /s jdk
rmdir /q /s cache
del /q server.jar
cd ..
exit