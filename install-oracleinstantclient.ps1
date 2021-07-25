# https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-basic-windows.x64-19.11.0.0.0dbru.zip
# https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-sqlplus-windows.x64-19.11.0.0.0dbru.zip
# https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-tools-windows.x64-19.11.0.0.0dbru.zip

$extractTo = "$Env:SystemDrive\oracle"
$tempDir = "$env:LOCALAPPDATA\Temp\oracle_instantclient_19"

# check if paths exist and create if needed
if (-not (Test-Path $extractTo)) {
    mkdir $extractTo
}

if (-not (Test-Path $tempDir)) {
    mkdir $tempDir
}

$instantclientbasicurl = "https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-basic-windows.x64-19.11.0.0.0dbru.zip"
(New-Object System.Net.WebClient).DownloadFile($instantclientbasicurl, "$tempDir\instantclient-basic-windows.x64-19.11.0.0.0dbru.zip");
$instantclientsqlplusurl = "https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-sqlplus-windows.x64-19.11.0.0.0dbru.zip"
(New-Object System.Net.WebClient).DownloadFile($instantclientsqlplusurl, "$tempDir\instantclient-sqlplus-windows.x64-19.11.0.0.0dbru.zip");
$instantclienttoolsurl = "https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-tools-windows.x64-19.11.0.0.0dbru.zip"
(New-Object System.Net.WebClient).DownloadFile($instantclienttoolsurl, "$tempDir\instantclient-tools-windows.x64-19.11.0.0.0dbru.zip");

(Expand-Archive "$tempDir\instantclient-basic-windows.x64-19.11.0.0.0dbru.zip" -DestinationPath $extractTo -Force);
(Expand-Archive "$tempDir\instantclient-sqlplus-windows.x64-19.11.0.0.0dbru.zip" -DestinationPath $extractTo -Force);
(Expand-Archive "$tempDir\instantclient-tools-windows.x64-19.11.0.0.0dbru.zip" -DestinationPath $extractTo -Force);

# add C:\oracle\instantclient_19_11 path to PATH environment variable
$envPathToAdd = $extractTo + "\instantclient_19_11"

if (Test-Path $envPathToAdd) {
    $regexAddPath = [regex]::Escape($envPathToAdd)
    $envRegistryKey = "Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment"

    $oldpath = (Get-ItemProperty -Path $envRegistryKey -Name PATH).path

    $arrPath = $oldpath -split ';' | Where-Object { $_ -notMatch "^$regexAddPath\\?" }
    
    $newpath = ($arrPath + $envPathToAdd) -join ';'

    Set-ItemProperty -Path $envRegistryKey -Name PATH -Value $newPath
}
else {
    Throw "'$envPathToAdd' is not a valid path."
}

RefreshEnv.cmd

# create dir C:\oracle\instantclient_19_3\network\admin to copy tnsnames.ora file to
$networkAdminDir = $envPathToAdd + "\network\admin"

if (-not (Test-Path $networkAdminDir)) {
    mkdir $networkAdminDir
}

# cleanup temp directory where zip files were downloaded to
if (Test-Path $tempDir) {
    Remove-Item -Path $tempDir -Recurse
}