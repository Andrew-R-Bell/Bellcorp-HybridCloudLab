Import-Module ActiveDirectory

Write-Host ""
Write-Host "Creating Bellcorp Organizational Units..." -ForegroundColor Cyan

$DomainDN = "DC=bellcorp,DC=local"

$OUs = @(
    "OU=Bellcorp,$DomainDN",
    "OU=Admin,OU=Bellcorp,$DomainDN",
    "OU=Computers,OU=Bellcorp,$DomainDN",
    "OU=Servers,OU=Computers,OU=Bellcorp,$DomainDN",
    "OU=Workstations,OU=Computers,OU=Bellcorp,$DomainDN",
    "OU=Groups,OU=Bellcorp,$DomainDN",
    "OU=Service Accounts,OU=Bellcorp,$DomainDN",
    "OU=Users,OU=Bellcorp,$DomainDN",
    "OU=Executive,OU=Users,OU=Bellcorp,$DomainDN",
    "OU=Finance,OU=Users,OU=Bellcorp,$DomainDN",
    "OU=HR,OU=Users,OU=Bellcorp,$DomainDN",
    "OU=IT,OU=Users,OU=Bellcorp,$DomainDN",
    "OU=Operations,OU=Users,OU=Bellcorp,$DomainDN",
    "OU=Sales,OU=Users,OU=Bellcorp,$DomainDN"
)

foreach ($OU in $OUs) {
    if (-not (Get-ADOrganizationalUnit -LDAPFilter "(distinguishedName=$OU)" -ErrorAction SilentlyContinue)) {
        New-ADOrganizationalUnit `
            -Name (($OU.Split(","))[0] -replace "OU=", "") `
            -Path ($OU.Substring($OU.IndexOf(",") + 1))

        Write-Host "Created $OU" -ForegroundColor Green
    }
    else {
        Write-Host "$OU already exists" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "Completed." -ForegroundColor Cyan