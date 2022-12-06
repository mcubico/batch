@echo off
REM #################################################
REM # (C) Bitcubico Technologies                    #
REM # Author: Mauricio Montoya Medrano              #
REM # Email: mcubico33@gmail.com                    #
REM #################################################

SET pathWheretheFileToCompressIsLocated= "D:\Developments\Bancolombia\K3AProject\K3ABCOApp"
SET pathWhereTheFileWillBeToSave= "D:\Developments\Bancolombia\K3ABCOApp.zip"

echo ========================================  START ========================================

echo %pathWhereTheFileWillBeToSave%
if exist %pathWhereTheFileWillBeToSave% (
    echo Deleting %pathWhereTheFileWillBeToSave%
    del K3ABCOApp.zip
)

echo Compressing
cd %pathWheretheFileToCompressIsLocated%
7z a -tzip %pathWhereTheFileWillBeToSave% %pathWheretheFileToCompressIsLocated%

echo ========================================   END  ========================================

REM Pausa de n segundos
ping localhost -n 5 >nul

exit