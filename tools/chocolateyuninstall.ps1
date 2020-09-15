#Remove the JWPce Program Files, Desktop Shortcut, and Start Menu shortcut
$ErrorActionPreference = 'SilentlyContinue';
$packageName= 'jwpce'
$shortcutName= 'JWPce'
Stop-Process  -Name "$packageName" -force 2>$null
Start-Sleep -Seconds 1 2>$null
remove-item -Recurse -Force "$env:ProgramFiles\$shortcutName" 2>$null
remove-item -Recurse -Force "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$packageName" 2>$null
remove-item -Recurse -Force "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName.lnk" 2>$null
remove-item -Recurse -Force "$env:PUBLIC\Desktop\$shortcutName.lnk" 2>$null
$ErrorActionPreference = 'Stop'; # stop on all errors