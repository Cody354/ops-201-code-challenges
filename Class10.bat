::1. Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property cpu -Descending

::2. Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property id -Descending

::3.Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending

::4. Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
 Get-Process | Sort-Object -Property WS -Descending | Select-Object -first 5

::5. Start the process Notepad ten times using a for loop.
for ($i = 1 : $i -le 10 : $i++) {
  Start-Process -FilePath "C:\Windows\system32\notepad.exe"
  )

::6. Close all instances of the Notepad.
Stop-Process -Name "notepad" -Force

::7. Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Stop-Process -Id 6948 -Force
:: i stopped the Veeam
