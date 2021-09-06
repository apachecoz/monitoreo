function SchoolReturnObject ()
{
  $value = New-Object PsObject -Property @{color="blue" ; number="12"}
  Add-Member -InputObject $value –MemberType NoteProperty –Name "Verb" –value "eat"
  return $value
}
$d = SchoolReturnObject
Write-Host "values from SchoolReturnObject are $($d.number), $($d.color) and $($d.Verb)"