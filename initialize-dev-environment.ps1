# install BoxStarter which will install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force

$Boxstarter.SuppressLogging=$True

# Modify user below to your own user, this must match your windows user 
# so that the script can automatically reboot and continue when it needs to
# Example: $cred=Get-Credential -credential domain\username
$cred=Get-Credential -credential bekkerw

# comment out or uncomment urls below to install software needed
$installPackages = @(   
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-wsl2.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-dockerdesktop.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/init-localoracledb.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-plsqldeveloper.ps1"
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-oracleinstantclient.ps1",    
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/start-dockerdesktop.ps1",
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/create-localoracledb.ps1",
        
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-git.ps1",
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-vscode.ps1",
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-visualstudio2019.ps1",
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-abpcli.ps1",
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-nodejs.ps1",    
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/install-misc.ps1"
)

Install-BoxstarterPackage -PackageName $installPackages -Credential $cred


# TODO: Still need to test uninstalling
# $uninstallPackages = @(
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-wsl2.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-nodejs.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-visualstudio2019.ps1",
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-vscode.ps1"
#     "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/uninstall-git.ps1"
# )

# Install-BoxstarterPackage -PackageName $uninstallPackages -Credential $cred
