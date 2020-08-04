$ErrorActionPreference = 'Stop';
$packageName= 'jwpce'
$toolsDir   = 'C:\Program Files\JWPce'
$url_jwpce        = 'https://mijet.eludevisibility.org/JWPxp/JWPce%201.50.7z' # Permalink

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url_jwpce
  softwareName  = 'JWPce' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = ''
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
}

# Make sure it isnt already running before we install it:
$ErrorActionPreference = 'SilentlyContinue';
Stop-Process  -Name 'jwpce' -force 2>$null
Start-Sleep -Seconds 1 2>$null
remove-item -Recurse -Force $toolsDir 2>$null
remove-item -Recurse -Force 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\jwpce' 2>$null
remove-item -Recurse -Force "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JWPce.lnk" 2>$null
remove-item -Recurse -Force "C:\Users\Public\Desktop\JWPce.lnk" 2>$null
$ErrorActionPreference = 'Stop';

# Install JWPce into the Program Files directory
Install-ChocolateyZipPackage @packageArgs 

# Install shortcuts in the Start menu and Desktop
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\jwpce"
Install-ChocolateyShortcut -ShortcutFilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JWPce.lnk" -TargetPath "$toolsDir\jwpce.exe"
Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JWPce.lnk" "C:\Users\Public\Desktop"