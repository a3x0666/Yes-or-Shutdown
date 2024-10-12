@echo off

color 0a

echo Welcome! Please answer the following question:

echo Do you agree with our terms and conditions? (Answer only yes/no)

set /p input=

if /i "%input%"=="Yes" goto accepted

if /i "%input%"=="No" goto declined

echo Invalid input. Please answer with either yes or no.
goto retry

:accepted
echo Thank you for your acceptance. We appreciate your cooperation.
echo Proceeding with the next steps...
pause
exit

:declined
echo We're sorry to hear that. The process will now terminate.
timeout 3
shutdown -s -t 0
