@echo off
set "JAVA_HOME=C:\Program Files\Android\Android Studio\jbr"
call "%~dp0gradlew.bat" assembleDebug
if errorlevel 1 exit /b %errorlevel%
copy /Y "%~dp0app\build\outputs\apk\debug\app-debug.apk" "%~dp0namma-railu-debug.apk"
echo APK ready: %~dp0namma-railu-debug.apk
pause
