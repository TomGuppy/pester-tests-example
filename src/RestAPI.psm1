Set-StrictMode -Version Latest

[string]$script:BaseUrl =  'https://swapi.co/api/'

Function Get-ApiResource {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$True, Position=0)]
        [string]$Resource
    )

    Write-Host 'Executing Get-ApiResource'

    $Response = Invoke-WebRequest -Method Get -Uri "$($script:BaseUrl)$Resource"
    return $Response
}
