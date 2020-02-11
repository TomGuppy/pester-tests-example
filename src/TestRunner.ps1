$here = Split-Path -Path $MyInvocation.MyCommand.Path
Import-Module $here\RestAPI.psm1 -Force
Import-Module Pester -Force

Invoke-Pester "$here\*.Tests.ps1" -Verbose:$true
