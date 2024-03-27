$logFile = "D:\bash-script-programming\power-shell-log\test.log"

function writeLog {
    param(
        [Parameter(Mandatory = $true)][string] $message,
        [Parameter(Mandatory = $false)] [ValidateSet("INFO","WARNING","ERROR")] [string] $level = "INFO"
    )
    $timeStamp =(Get-Date).toString("yyy/MM/dd HH:mm:ss")
    $logMessage = "$timeStamp $logStream"
    Add-Content -Path $logFile -Value "$timestamp [$level] - $message"
}

writeLog -message "cron 1 is running."