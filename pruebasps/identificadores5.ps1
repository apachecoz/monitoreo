Get-WmiObject win32_bios

Write-Host ""
Write-Host ""
Write-Host "--------------"
Write-Host ""
Write-Host ""

Get-WmiObject -Class Win32_Bios | Format-List -Property *