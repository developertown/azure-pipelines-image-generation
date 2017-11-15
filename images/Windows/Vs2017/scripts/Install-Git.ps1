###############################################################################
#
#   Install Git for Windows
#   owner: CI Platform
#
###############################################################################

Import-Module -Name ImageHelpers

choco install git --version 2.15.0 -y --package-parameters= "/GitAndUnixToolsOnPath /WindowsTerminal /NoShellIntegration"

Add-MachinePathItem "C:\Program Files\Git\mingw64\bin"
Add-MachinePathItem "C:\Program Files\Git\usr\bin"
Add-MachinePathItem "C:\Program Files\Git\bin"
$env:Path = Get-MachinePath

Write-Host "Git $(git --version) on path"