@echo off
echo Generating icons...
python coworksync/generate_icons.py
if errorlevel 1 (
    echo Icon generation failed!
    pause
    exit /b 1
)
echo.
echo Building CoworkSync...
pyinstaller --clean CoworkSync.spec
echo.
echo Done. Output: dist\CoworkSync.exe
pause
