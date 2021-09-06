function Install-Software {
	[CmdletBinding()]
	param(
		[Parameter()]
		[string] $Version
	)
	
	Write-Host "I installed software version $Version. Yippee!"

}

# Write-Host "Result:"
Install-Software "holamundo"
