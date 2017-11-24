@echo off
echo "Stopping COM+ Event System"
net stop EventSystem

echo "Stopping COM+ System Application"
net stop COMSysApp

echo "Stopping Volume Shadow Copy"
net stop VSS

echo "Starting COM+ Event System"
net start EventSystem

echo "Starting COM+ System Application"
net start COMSysApp

echo "Starting Volume Shadow Copy"
net start VSS

echo Test to list VSS Writers
vssadmin list writers
pause
exut
