choco upgrade Microsoft-Windows-Subsystem-Linux --source windowsFeatures
choco upgrade VirtualMachinePlatform --source windowsFeatures
choco upgrade wsl2 --params="/Version:2 /Retry:true" --yes
choco upgrade wsl-ubuntu-2004 --yes
choco upgrade docker-desktop --yes