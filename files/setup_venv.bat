@echo off
echo Setting up virtual environment for CHATBOT project...

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed or not in PATH
    pause
    exit /b 1
)

REM Create virtual environment
echo Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo Installing requirements...
pip install -r requirements.txt

echo.
echo Virtual environment setup complete!
echo.
echo To activate the virtual environment in the future, run:
echo     venv\Scripts\activate.bat
echo.
echo To deactivate the virtual environment, run:
echo     deactivate
echo.
pause
