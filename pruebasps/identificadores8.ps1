$uuid = (Get-CimInstance -Class Win32_ComputerSystemProduct).UUID
[Guid]$guid = $uuid

"d","n","p","b","x" |
  ForEach-Object {
    '$guid.ToString("{0}") = {1}' -f $_, $guid.ToString($_)
  }

Write-Host ""  
Write-Host "--------------------------------"  
Write-Host ""  
  
(Get-CimInstance -Class Win32_ComputerSystemProduct).UUID  

Write-Host ""  
Write-Host ""  