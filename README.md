﻿# JWPce
A chocolatey package wrapper for the Jwpce Jwpxp (GPL) dictionary application. This nugget package downloads the JWPce zip file from Tanos's webpage [http://www.tanos.co.uk/jlpt/extras/jwpce/jwpce150.zip], and installs it on your Windows 10 Desktop machine!

# Usage
* First install Chocolatey via a Admin Powershell Window. See: http://chocolatey.org/

* Next you can either upload this nupkg file to a repository (example: nexus), or you can install it manually via the command line via:
  choco  install  .\jwpce.1.50.nupkg

* Now you will have a shortcut on the desktop, and a shortcut in the start menu. If you want to uninstall, just do "choco uninstall jwpce"

# TODO (Still working on this)
* We still need to edict package that is separate (jwpce-edict should be the name).

* We still need to upload this GPL nugget to the official nugget repository.