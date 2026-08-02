Import-Module ActiveDirectory

Write-Host ""
Write-Host "Bellcorp Health Check"
Write-Host "====================="
Write-Host ""

Get-Service `
DNS,
NTDS,
KDC,
Netlogon,
ADWS |
Format-Table Status,Name