function ImplicitArray ()
{
  Write-Output 12

  Write-Output "Blue"
  return "green"
}

$b = ImplicitArray
Write-Host "values from ImplicitArray are $($b[0]), $($b[1]) and $($b[2])"