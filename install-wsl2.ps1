# Enable-WindowsOptionalFeature -online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
# dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
# Enable-WindowsOptionalFeature -online -FeatureName VirtualMachinePlatform -NoRestart
# dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

choco install Microsoft-Windows-Subsystem-Linux --source windowsFeatures
choco install VirtualMachinePlatform --source windowsFeatures
choco upgrade wsl2 --yes --params="/Version:2 /Retry:true"