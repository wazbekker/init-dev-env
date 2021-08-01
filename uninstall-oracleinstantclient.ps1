$extractTo = "$Env:SystemDrive\oracle"

if (Test-Path $extractTo) {
    Remove-Item -Path $extractTo -Recurse -Force
}

# TODO remove path from $env:path variables