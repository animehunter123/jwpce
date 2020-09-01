#Remove the JWPce Program Files, Desktop Shortcut, and Start Menu shortcut
$ErrorActionPreference = 'SilentlyContinue';
Stop-Process  -Name 'jwpce' -force 2>$null
Start-Sleep -Seconds 1 2>$null
remove-item -Recurse -Force "$Env:ProgramFiles\JWPce" 2>$null
remove-item -Recurse -Force "$Env:ProgramData\Microsoft\Windows\Start Menu\Programs\Programs\jwpce" 2>$null
remove-item -Recurse -Force "$Env:ProgramData\Microsoft\Windows\Start Menu\Programs\Programs\JWPce.lnk" 2>$null
remove-item -Recurse -Force "$Env:PUBLIC\Desktop\JWPce.lnk" 2>$null
$ErrorActionPreference = 'Stop'; # stop on all errors