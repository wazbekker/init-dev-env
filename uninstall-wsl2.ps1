# Disable-WindowsOptionalFeature -online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
# Disable-WindowsOptionalFeature -online -FeatureName VirtualMachinePlatform -NoRestart

choco uninstall Microsoft-Windows-Subsystem-Linux --source windowsFeatures
choco uninstall VirtualMachinePlatform --source windowsFeatures

choco uninstall wsl2 --yes
choco uninstall wsl-ubuntu-2004 --yes