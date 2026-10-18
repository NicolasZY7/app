@echo off
setlocal

set "APP=%TEMP%\MyApp.exe"
set "URL=https://gitee.com/NicolasZY7/myapp/raw/master/MyApp.exe"

curl -fL "%URL%" -o "%APP%"
if errorlevel 1 (
    echo 下载失败
    exit /b 1
)

start "" "%APP%"