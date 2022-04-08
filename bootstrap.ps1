$profileDir = Split-Path -parent $profile
$windowsTerminalDir = Join-Path $home "AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"

New-Item $profileDir -ItemType Directory -Force -ErrorAction SilentlyContinue

Copy-Item -Path ".\profile\**" -Destination $profileDir -Include ** -Force -Recurse
Copy-Item -Path ".\home\**" -Destination $home -Include **
Copy-Item -Path ".\windows-terminal\settings.json" -Destination $windowsTerminalDir

Remove-Variable profileDir
Remove-Variable windowsTerminalDir
