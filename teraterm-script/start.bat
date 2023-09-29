@echo off
:: Clear old logs from previous runs
del *.log
:: Save current directory
set "STARTING_DIR=%cd%"
echo Working Directory: %STARTING_DIR%
cd C:\Program Files (x86)\teraterm
c:
set /p COMPORT="Enter your COM-PORT:"
:: Run tera term, save log to original directory
echo "Attempting to collect logs from COM port #%COMPORT%"
ttermpro /C=%COMPORT% /BAUD=115200 /L="%STARTING_DIR%/temperature-data.log" /M="%STARTING_DIR%\receive_data.ttl"