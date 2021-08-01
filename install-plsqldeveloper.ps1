
# https://www.allroundautomations.com/files/trial/plsqldev1406x64.msi

$appPath = "C:\Program Files\PLSQL Developer 14\plsqldev.exe"

# check if the app is already installed
if (-not (Test-Path $appPath)) {
    $tempDir = "$env:LOCALAPPDATA\Temp\plsql-developer"

    if (-not (Test-Path $tempDir)) {
        mkdir $tempDir
    }

    $plsqlDeveloperUrl = "https://www.allroundautomations.com/files/trial/plsqldev1406x64.msi"

    (New-Object System.Net.WebClient).DownloadFile($plsqlDeveloperUrl,"$tempDir\plsqldev1406x64.msi");

    Start-Process -FilePath "$tempDir\plsqldev1406x64.msi" -Wait

    # cleanup temp directory where msi file was downloaded to
    if (Test-Path $tempDir) {
        Remove-Item -Path $tempDir -Recurse
    }
}