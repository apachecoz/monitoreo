$service = get-service | where-object {$_.name -like '*vm*'} | select-object name, status, displayname
 
# converto-json $service

ConvertTo-Json $service

# $service

# $service | ConvertTo-Json