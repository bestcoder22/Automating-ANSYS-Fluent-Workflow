echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v241\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\tell.exe" DESKTOP-QMHNAPP 57742 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="DESKTOP-QMHNAPP" (%KILL_CMD% 6688) 
if /i "%LOCALHOST%"=="DESKTOP-QMHNAPP" (%KILL_CMD% 9016) 
if /i "%LOCALHOST%"=="DESKTOP-QMHNAPP" (%KILL_CMD% 4212)
del "C:\Users\Lenovo\Desktop\Fluent Simulation\ansys\backend\cleanup-fluent-DESKTOP-QMHNAPP-9016.bat"
