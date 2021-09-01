<#
    Nombre: recorrermaquina.ps1
    .Synopsis
    Obtener datos relevantes de la PC

endregion

#>
$a = Get-WmiObject win32_bios
        Write-Host $a

$body_json = '{"datasource": [{
            "parentId": "123456789000",
            "name": "(name)",
            "id": "(value)",
            "typeId": 0,
            "childEnabled": false,
            "childCount": 0,
            "childType": 0,
            "ipAddress": "(ipAddress)",
            "zoneId": 0,
            "url": "(url)",
            "enabled": false,
            "idmId": 123456789000,
            "parameters": [{
                "key": "(key)",
                "value": "(value)"
            }]
        }]}'
   $a = $a | ConvertTo-Json
 $a | Out-File -FilePath texto.txt

 #$ip = Get-NetIpAddress | Where-Object -FilterScript {$_.ValidLifeTime -Lt ([TimeSpan]::FromDays(1))}
$ip = Get-NetIpConfiguration -InterfaceIndex 10
$ip | Out-File -FilePath ip.txt