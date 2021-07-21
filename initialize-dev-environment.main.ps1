# install BoxStarter which will install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force

$cred=Get-Credential -credential bekkerw
#$cred=Get-Credential -credential domain\username

$packages = @(
    ".\initialize-dev-environment.package.ps1",
    ".\vs-installer.package.ps1"
)

Install-BoxstarterPackage -PackageName $packages -Credential $cred

# refresh the environment so that the new path variables take effect immediately
RefreshEnv.cmd

# install npm global packages
# npm install -g yarn@1.22.10

# install vs code extensions
# code --install-extension johnpapa.vscode-peacock
# code --install-extension dbaeumer.vscode-eslint
# code --install-extension codezombiech.gitignore
# code --install-extension eamodio.gitlens
# code --install-extension oderwat.indent-rainbow
# code --install-extension firsttris.vscode-jest-runner
# code --install-extension nrwl.angular-console
# code --install-extension pflannery.vscode-versionlens
# code --install-extension angular.ng-template

# install oracle and plsql developer