@echo off
chcp 65001 >nul
title Installation du modèle Ticketizy

if not exist "ModeleEtiquetteExportation2.png" (
	echo Erreur Pas le Model Ici
	pause
	exit /b 1
)

echo Fichier trouvé
echo.

set "APPDATAPATH=%APPDATA%"
set "TICKETIZY=%APPDATAPATH%\Ticketizy"

echo : %APPDATAPATH%
echo %TICKETIZY%
echo.

set "DESTINATION=%TICKETIZY%\ModeleEtiquetteExportation2.png"

echo Copie du modèle en cours...
copy "ModeleEtiquetteExportation2.png" "%DESTINATION%" >nul 2>&1

if exist "%DESTINATION%" (
	echo Fait
	echo.
) else (
	echo Erreur lors de la copie du modèle
)

pause