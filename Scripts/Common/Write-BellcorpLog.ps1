function Write-BellcorpLog {

    param(
        [string]$Message,
        [ValidateSet("INFO","WARNING","ERROR","SUCCESS")]
        [string]$Level = "INFO"
    )

    $Time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    switch ($Level) {

        "INFO" {
            Write-Host "[$Time] [INFO] $Message" -ForegroundColor Cyan
        }

        "WARNING" {
            Write-Host "[$Time] [WARNING] $Message" -ForegroundColor Yellow
        }

        "ERROR" {
            Write-Host "[$Time] [ERROR] $Message" -ForegroundColor Red
        }

        "SUCCESS" {
            Write-Host "[$Time] [SUCCESS] $Message" -ForegroundColor Green
        }
    }
}