#!/bin/bash

echo "Setting up virtual environment for CHATBOT project..."

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python3 is not installed or not in PATH"
    exit 1
fi

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "Installing requirements..."
pip install -r requirements.txt

echo ""
echo "Virtual environment setup complete!"
echo ""
echo "To activate the virtual environment in the future, run:"
echo "    source venv/bin/activate"
echo ""
echo "To deactivate the virtual environment, run:"
echo "    deactivate"
echo ""
