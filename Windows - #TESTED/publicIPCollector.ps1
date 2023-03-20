 $ipAddress = Invoke-RestMethod -Uri "https://api.ipify.org?format=json" | Select-Object -ExpandProperty ip

$eventLog = New-Object System.Diagnostics.EventLog("Application")
$eventLog.Source = "publicIpCollector"

$eventId = 100
$eventMessage = $ipAddress

$eventLog.WriteEntry($eventMessage, "Information", $eventId)