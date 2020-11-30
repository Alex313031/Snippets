echo "Chromium Total Working Set Usage PS1 Script @Alex Frick"
(Get-Process chrome | Measure-Object WorkingSet -sum).sum /1GB
pause