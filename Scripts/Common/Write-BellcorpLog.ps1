function Write-BellcorpLog {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Message,

        [ValidateSet('INFO','SUCCESS','WARNING','ERROR')]
        [string]$Level = 'INFO'
    )

    $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'

    $colour = switch ($Level) {
        'INFO'    { 'Cyan' }
        'SUCCESS' { 'Green' }
        'WARNING' { 'Yellow' }
        'ERROR'   { 'Red' }
    }

    Write-Host "[$timestamp] [$Level] $Message" -ForegroundColor $colour
}