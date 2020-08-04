#Remove the JWPce Program Files, Desktop Shortcut, and Start Menu shortcut
$ErrorActionPreference = 'SilentlyContinue';
$toolsDir   = 'C:\Program Files\JWPce'
Stop-Process  -Name 'jwpce' -force 2>$null
Start-Sleep -Seconds 1 2>$null
remove-item -Recurse -Force $toolsDir 2>$null
remove-item -Recurse -Force 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\jwpce' 2>$null
remove-item -Recurse -Force "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JWPce.lnk" 2>$null
remove-item -Recurse -Force "C:\Users\Public\Desktop\JWPce.lnk" 2>$null
$ErrorActionPreference = 'Stop'; # stop on all errors