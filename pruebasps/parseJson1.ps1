$request = 'http://omawww.sat.gob.mx/cifras_sat/Documents/Listado_Completo_69.csv'
# $request = 'http://172.16.5.20:84'
# $request = 'http://172.16.30.250:83'
# $request = 'http://bancomer.com'
Write-Host "-------------------------"
Write-Host "URL A MONITOREAR"
$request
Write-Host "-------------------------"
# 'http://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=aliases&fmt=json'
#          'http://musicbrainz.org/ws/2/recording/fcbcdc39-8851-4efc-a02a-ab0e13be224f?inc=artist-credits+isrcs+releases&fmt=json'
#          'http://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=aliases&fmt=json'
# Invoke-WebRequest $request Content
# Invoke-WebRequest $request |
# | ConvertFrom-Json | Select name, disambiguation, country
 # Invoke-WebRequest $request   
#   Select StatusCode, RawContent
 # |
 # ConvertFrom-Json   |
# Select name, disambiguation, country
#  Select id, title, video, artist-credit, disambiguation, first-release-date


try
{
    # $Response = Invoke-WebRequest -Uri "www.microsoft.com/unkownhost"
	
	Invoke-WebRequest $request |
	Select StatusCode, RawContent	
	
    # This will only execute if the Invoke-WebRequest is successful.
    $StatusCode = $Response.StatusCode
}
catch
{	
    $StatusCode = $_.Exception.Response.StatusCode.value__
	$RawContent = $_.Exception.Response.RawContent.value__
}
$StatusCode


