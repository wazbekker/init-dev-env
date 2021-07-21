# see https://community.chocolatey.org/packages for other packages 


choco upgrade git --yes
choco upgrade nodejs-lts --yes
choco upgrade notepadplusplus.install --yes
choco upgrade Microsoft-Windows-Subsystem-Linux -source windowsFeatures
choco upgrade VirtualMachinePlatform -source windowsFeatures
choco upgrade wsl2 --params="/Version:2 /Retry:true"
choco upgrade wsl-ubuntu-2004 --yes
choco upgrade microsoft-windows-terminal --yes
choco upgrade docker-desktop --yes
