$jsonRequest = [ordered]@{
    update= @{
        comment = @(
            @{
               add =@{
                   body = "$Description"
                }
            }
        )
    }
    transition = @{
        id = 21
    }
}

$jsonRequest | ConvertTo-Json -Depth 20