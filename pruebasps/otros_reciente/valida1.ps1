Function Validate 
{
	Param(
		[Parameter(Mandatory=$true)]
		[ValidateNotNullOrEmpty()]
		[String[]]$Value
	)
	

}
$Value = Read-Host "Please enter a value"
Validate $Value


try { Validate }
catch { "An error occurred." }