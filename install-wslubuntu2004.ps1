$tempDir = "$env:LOCALAPPDATA\Temp\wsl-ubuntu2004"

# check if paths exist and create if needed
if (-not (Test-Path $tempDir)) {
    mkdir $tempDir
}

$appxFileName = "wslubuntu2004.appx"

$ubuntu2004url = "https://aka.ms/wslubuntu2004"
# (New-Object System.Net.WebClient).DownloadFile($ubuntu2004url, "$tempDir\$appxFileName");

Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile "$tempDir\$appxFileName" -UseBasicParsing

# Set-location -Path $tempDir

Add-AppxPackage -Path "$tempDir\$appxFileName"

# Set-Location -Path "C:\Repos\init-dev-env\"

# choco upgrade wsl-ubuntu-2004 --yes #--params "/InstallRoot:true" 

# need to run ubuntu2004 on command line to setup distro in wsl and add default user and password