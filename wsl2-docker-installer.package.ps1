# Enable-WindowsOptionalFeature -online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
# Enable-WindowsOptionalFeature -online -FeatureName VirtualMachinePlatform -NoRestart

choco install Microsoft-Windows-Subsystem-Linux --source windowsFeatures
choco install VirtualMachinePlatform --source windowsFeatures
# choco upgrade wsl2 --params="/Version:2 /Retry:true" --yes
# choco upgrade wsl-ubuntu-2004 --yes
# choco upgrade docker-desktop --yes