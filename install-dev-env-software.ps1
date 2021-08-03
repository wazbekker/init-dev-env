# install BoxStarter which will install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force

# $Boxstarter.SuppressLogging=$True

# Modify user below to your own user, this must match your windows user 
# so that the script can automatically reboot and continue when it needs to
# Example: $cred=Get-Credential -credential domain\username
$cred=Get-Credential -credential bekkerw

# comment out or uncomment urls below to install software needed
$installPackages = @(   
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-wsl2.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-dockerdesktop.ps1",        
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-git.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-vscode.ps1"
    # "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-visualstudio2019enterprise.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-visualstudio2019community.ps1",
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-nodejs.ps1",    
    "https://raw.githubusercontent.com/wazbekker/init-dev-env/master/choco-install/install-misc.ps1"
)

Install-BoxstarterPackage -PackageName $installPackages -Credential $cred
