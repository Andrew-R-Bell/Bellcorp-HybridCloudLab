function Write-BellcorpLog {

    [CmdletBinding()]
    param(

        [Parameter(Mandatory)]
        [string]$Message,

        [ValidateSet(
            'INFO',
            'SUCCESS',
            'WARNING',
            'ERROR'
        )]

        [string]$Level = 'INFO'
    )

    $Time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    $Colour = switch ($Level)
    {
        INFO    { "Cyan" }
        SUCCESS { "Green" }
        WARNING { "Yellow" }
        ERROR   { "Red" }
    }

    Write-Host "[$Time] [$Level] $Message" -ForegroundColor $Colour
}

Export-ModuleMember -Function Write-BellcorpLog