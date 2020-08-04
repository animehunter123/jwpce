# JWPce
A chocolatey package wrapper for the Jwpce Jwpxp (GPL) dictionary application. This nugget package downloads the JWPce zip file from M.I.J.E.T's webpage [https://mijet.eludevisibility.org/JWPxp/JWPce%201.50.7z], and installs it on your Windows 10 Desktop machine!

<img width="964" alt="jwpce" src="https://user-images.githubusercontent.com/42163211/69770486-93451480-11cc-11ea-9a15-e1460ceb0a45.png">

# Usage
* First install Chocolatey via a Admin Powershell Window. See: http://chocolatey.org/

* Next you can either upload this nupkg file to a repository (example: nexus), or you can install it manually via the command line via:
  choco  install  .\jwpce.1.50.nupkg

* Now you will have a shortcut on the desktop, and a shortcut in the start menu. If you want to uninstall, just do "choco uninstall jwpce"



# TODO (Still working on this)
* We still need to edict package that is separate (jwpce-edict should be the name).

* We still need to upload this GPL nugget to the official nugget repository.