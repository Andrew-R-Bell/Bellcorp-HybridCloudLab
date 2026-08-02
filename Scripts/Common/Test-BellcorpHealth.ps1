Import-Module ActiveDirectory

. "$PSScriptRoot\..\Common\Write-BellcorpLog.ps1"
. "$PSScriptRoot\..\Common\Test-BellcorpAdmin.ps1"

if (-not (Test-BellcorpAdmin)) {
    Write-BellcorpLog -Message "Run PowerShell as Administrator." -Level ERROR
    exit 1
}

Write-BellcorpLog -Message "Starting Bellcorp health check..."

$services = @(
    'ADWS',
    'DNS',
    'KDC',
    'Netlogon',
    'NTDS'
)

foreach ($service in $services) {

    $result = Get-Service -Name $service

    if ($result.Status -eq 'Running') {

        Write-BellcorpLog -Message "$service is running." -Level SUCCESS

    }
    else {

        Write-BellcorpLog -Message "$service is NOT running." -Level ERROR

    }
}