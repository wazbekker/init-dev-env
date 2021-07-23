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
# angular?
# nx?

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

# install oracle instant client, sqlplus and extra tools
# https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-basic-windows.x64-19.11.0.0.0dbru.zip
# https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-sqlplus-windows.x64-19.11.0.0.0dbru.zip
# https://download.oracle.com/otn_software/nt/instantclient/1911000/instantclient-tools-windows.x64-19.11.0.0.0dbru.zip


(New-Object System.Net.WebClient).DownloadFile("https://download.teamviewer.com/download/TeamViewerPortable.zip","$Env:TEMP\TeamViewerPortable.zip");
(Expand-Archive "$Env:TEMP\TeamViewerPortable.zip" -DestinationPath "$Env:USERPROFILE\AppData\Local\TeamViewerPortable\" -Force);

(New-Object System.Net.WebClient).DownloadFile("https://download.teamviewer.com/download/TeamViewerPortable.zip","$Env:TEMP\TeamViewerPortable.zip");
(Expand-Archive "$Env:TEMP\TeamViewerPortable.zip" -DestinationPath "$Env:USERPROFILE\AppData\Local\TeamViewerPortable\" -Force);

(New-Object System.Net.WebClient).DownloadFile("https://download.teamviewer.com/download/TeamViewerPortable.zip","$Env:TEMP\TeamViewerPortable.zip");
(Expand-Archive "$Env:TEMP\TeamViewerPortable.zip" -DestinationPath "$Env:USERPROFILE\AppData\Local\TeamViewerPortable\" -Force);

# install plsql developer
# https://www.allroundautomations.com/files/trial/plsqldev1406x64.msi
(New-Object System.Net.WebClient).DownloadFile("https://typora.io/windows/typora-setup-x64.exe","$Env:TEMP\typora-setup-x64.exe");cmd /c '%TEMP%\typora-setup-x64.exe /SILENT'


# pull docker image from docker hub for local oracle db
# docker pull wazbekker/oracledatabase:12.2.0.1-se2-extended

# start container using oracle docker image
# docker run --name ora122 -p 1521:1521 -p 5500:5500 -v oradata:/opt/oracle/oradata wazbekker/oracledatabase:12.2.0.1-se2-extended

# create mtp user with correct permissions
# sqlplus

# create gcc user with correct permissions
# sqlplus


