function ExplicitArray ()
{
  $myArray = @()

  $myArray += 12
  $myArray += "Blue"

  return ,$myArray
}

Clear-Host
$a = ExplicitArray
Write-Host "values from ExplicitArray are $($a[0]) and $($a[1])"