# install BoxStarter which will install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force

# $Boxstarter.SuppressLogging=$True

# Modify user below to your own user, this must match your windows user 
# so that the script can automatically reboot and continue when it needs to
# Example: $cred=Get-Credential -credential domain\username
$cred=Get-Credential -credential bekkerw

# TODO: Still need to test uninstalling
# $uninstallPackages = @(
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall/uninstall-wsl2.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall/uninstall-dockerdesktop.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall/uninstall-nodejs.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall/uninstall-visualstudio2019.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall/uninstall-vscode.ps1"
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall/uninstall-git.ps1"
# )

# Install-BoxstarterPackage -PackageName $uninstallPackages -Credential $cred