$logFile = "D:\bash-script-programming\power-shell-log\test.log"

function writeLog {
    Param ([string]$logStream)
    $timeStamp =(Get-Date).toString("yyy/MM/dd HH:mm:ss")
    $logMessage = "$timeStamp $logStream"
    Add-Content $logFile -value $logMessage
}

writeLog "cron 1 is running."