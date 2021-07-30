# uninstall all tmp packages listed when running choco list --local-only
choco list --local-only | Select-String -Pattern 'tmp' -AllMatches -List | ForEach-Object {choco uninstall ($_ -split " ")[0] }