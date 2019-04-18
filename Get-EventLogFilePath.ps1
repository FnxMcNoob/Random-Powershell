#region Fuck About Code 
<#
$PSEvents = Get-WinEvent -FilterHashtable @{LogName="Windows Powershell";Id='400'}

$EventLog = Get-Eventlog -LogName "Windows Powershell"

$EventLogs = (Get-Eventlog -LogName "Windows Powershell" | Where-Object {$_.InstanceId -eq 400})
#>
#endregion

#region Get FilePath

(Get-WinEvent -Listlog "Windows Powershell").logfilepath

#endregion