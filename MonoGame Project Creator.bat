@echo off
set /p PROJECT_NAME="Project Name: "
cls
@echo Possible Targets:
@echo 1. Windows DirectX
@echo 2. DesktopGL
@echo 3. Windows Universal
@echo 4. Android
@echo 5. iOS
@echo 6. .NET Standard Library
@echo 7. Shared Project
@echo 8. Content Pipeline Extension
set /p TARGET_ID="Target ID: "
cls

set TARGET=NONE

if %TARGET_ID%==1 SET TARGET=mgwindowsdx
if %TARGET_ID%==2 SET TARGET=mgdesktopgl
if %TARGET_ID%==3 SET TARGET=mgdesktopgl
if %TARGET_ID%==4 SET TARGET=mgdesktopgl
if %TARGET_ID%==5 SET TARGET=mgdesktopgl
if %TARGET_ID%==6 SET TARGET=mgdesktopgl
if %TARGET_ID%==7 SET TARGET=mgdesktopgl
if %TARGET_ID%==8 SET TARGET=mgdesktopgl

if %TARGET%==NONE @echo Unknown target...
if %TARGET%==NONE PAUSE
if %TARGET%==NONE EXIT

@echo Creating project %PROJECT_NAME% of type %TARGET%...
dotnet new %TARGET% -o %PROJECT_NAME%
PAUSE