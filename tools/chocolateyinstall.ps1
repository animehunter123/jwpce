$ErrorActionPreference = 'SilentlyContinue';

# Package Variables
$packageName= 'jwpce'
$shortcutName= 'JWPce'
$toolsDir   = "$env:ProgramFiles\$shortcutName"
$url_jwpce        = 'https://mijet.eludevisibility.org/JWPxp/JWPce%201.50.7z' # Permalink (from M.I.J.E.T's Webpage).
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url_jwpce
  softwareName  = "$shortcutName"
}

# Stop existing proceses from running:
Stop-Process  -Name "$packageName" -force 2>$null

# Install JWPce into the Program Files directory
Install-ChocolateyZipPackage @packageArgs 

# Install shortcuts in the Windows Start Menu and Desktop
mkdir "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName"
Install-ChocolateyShortcut -ShortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName.lnk" -TargetPath "$toolsDir\$packageName.exe"
Copy-Item "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$shortcutName\$shortcutName.lnk" "$env:ProgramData\Desktop"