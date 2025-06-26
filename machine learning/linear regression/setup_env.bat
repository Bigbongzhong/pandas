@echo off
set ENV_NAME=.venv
set KERNEL_NAME=linear-venv

echo 🔄 Removing old virtual environment...
rmdir /s /q %ENV_NAME%

echo 🆕 Creating new virtual environment...
python -m venv %ENV_NAME%

echo ✅ Activating virtual environment...
call %ENV_NAME%\Scripts\activate.bat

echo 🚀 Upgrading pip...
python -m pip install --upgrade pip

echo 📦 Installing required packages...
pip install scikit-learn==1.7.0 pandas numpy matplotlib jupyter ipykernel

echo 🧠 Registering Jupyter kernel...
python -m ipykernel install --user --name=%KERNEL_NAME% --display-name "Python (%KERNEL_NAME%)"

echo 🎉 Setup complete!
echo 👉 Now open Jupyter and select kernel: Python (%KERNEL_NAME%)
pause
