$profileDir = Split-Path -parent $profile

New-Item $profileDir -ItemType Directory -Force -ErrorAction SilentlyContinue

Copy-Item -Path ./profile/** -Destination $profileDir -Include ** -Force
Copy-Item -Path ./home/** -Destination $home -Include **

Remove-Variable profileDir
