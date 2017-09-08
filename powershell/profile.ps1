# After updating this file you can relooad it in
# an already opened powershell session by: "PS>.$profile.CurrentUserAllHosts"

Import-Module posh-git

## If you have a C:\Projects folder
function proj{
  Set-Location "c:\Projects"
}

## Sample:
#  For the folder C:\Projects\myApp
# function myApp{
#	 proj
#	 Set-Location myApp
# }

## Notepad++ shortcut
## In order for this to work, make sure to add the path of Notepad++ program to the PATH environment variable (local and system)
function np($fileName){
	Notepad++.exe $fileName
}

## To execute a .bat file from powershell script
## For example for: C:\BatchFiles\batchFile.bat
# function scriptName{
# 	set-location C:\BatchFiles
# 	cmd.exe /c 'batchFile.bat'
# 	[Optionally you can set the location to a default location after running the .bat file]
#   set-location C:\
# }
