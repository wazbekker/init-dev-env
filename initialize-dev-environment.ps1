# install BoxStarter which will install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force

$cred=Get-Credential -credential bekkerw
#$cred=Get-Credential -credential domain\username

$uninstallPackages = @(
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-wsl2.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-nodejs.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-visualstudio2019.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-vscode.ps1"
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-wsl2.ps1"
)

Install-BoxstarterPackage -PackageName $uninstallPackages -Credential $cred

$packages = @(
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-wsl2.ps1"
)

Install-BoxstarterPackage -PackageName $packages -Credential $cred
