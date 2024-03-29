


:: Get events from the System event log that are of type Error and occurred in the last 24 hours, and export to a file

@echo off

Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"

::Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath "$env:USERPROFILE\Desktop\errors.txt" 


::Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -LogName System -InstanceId 16


::Print to the screen the most recent 20 entries from the System event log.
Get-WinEvent -LogName System -MaxEvents 20

::Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-WinEvent -LogName System -MaxEvents 500 
