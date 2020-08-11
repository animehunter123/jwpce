$ErrorActionPreference = 'SilentlyContinue';

# Package Variables
$packageName= 'jwpce'
$shortcutName= 'JWPce'
$toolsDir   = "C:\Program Files\$shortcutName"
$url_jwpce        = 'https://mijet.eludevisibility.org/JWPxp/JWPce%201.50.7z' # Permalink (from M.I.J.E.T's Webpage).
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url_jwpce
  softwareName  = "$shortcutName"
}

# Stop existing proceses from running, clean up source directories, and :
Write-Host -ForegroundColor Green "Installing $shortcutName. Stopping and removing previous version."
Stop-Process  -Name "$packageName" -force 2>$null
Start-Sleep -Seconds 1 2>$null
remove-item -Recurse -Force $toolsDir 2>$null
remove-item -Recurse -Force "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\$packageName" 2>$null
remove-item -Recurse -Force "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName.lnk" 2>$null
remove-item -Recurse -Force "C:\Users\Public\Desktop\$shortcutName.lnk" 2>$null

# Install JWPce into the Program Files directory
Install-ChocolateyZipPackage @packageArgs 

# Install shortcuts in the Start menu and Desktop
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\$packageName"
Install-ChocolateyShortcut -ShortcutFilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName.lnk" -TargetPath "$toolsDir\$packageName.exe"
Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName.lnk" "C:\Users\Public\Desktop"

Write-Host -ForegroundColor Green "$shortcutName was installed correctly with fresh settings."