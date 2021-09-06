Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Data Entry Form'
$form.Size = New-Object System.Drawing.Size(400,300)
$form.StartPosition = 'CenterScreen'

$okButton = New-Object System.Windows.Forms.Button
$okButton.Location = New-Object System.Drawing.Point(75,120)
$okButton.Size = New-Object System.Drawing.Size(75,23)
$okButton.Text = 'OK'
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $okButton
$form.Controls.Add($okButton)

$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Location = New-Object System.Drawing.Point(150,120)
$cancelButton.Size = New-Object System.Drawing.Size(75,23)
$cancelButton.Text = 'Cancel'
$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$form.CancelButton = $cancelButton
$form.Controls.Add($cancelButton)

$label1 = New-Object System.Windows.Forms.Label
$label1.Location = New-Object System.Drawing.Point(10,20)
$label1.Size = New-Object System.Drawing.Size(60,20)
$label1.Text = 'Nombre :'
$form.Controls.Add($label1)

$textBox1 = New-Object System.Windows.Forms.TextBox
$textBox1.Location = New-Object System.Drawing.Point(70,20)
$textBox1.Size = New-Object System.Drawing.Size(260,20)
$form.Controls.Add($textBox1)


$label2 = New-Object System.Windows.Forms.Label
$label2.Location = New-Object System.Drawing.Point(10,45)
$label2.Size = New-Object System.Drawing.Size(60,45)
$label2.Text = 'Correo :'
$form.Controls.Add($label2)

$textBox2 = New-Object System.Windows.Forms.TextBox
$textBox2.Location = New-Object System.Drawing.Point(70,45)
$textBox2.Size = New-Object System.Drawing.Size(260,45)
$form.Controls.Add($textBox2)



$form.Topmost = $true

$form.Add_Shown({$textBox1.Select()})

$result = $form.ShowDialog()

Function Validate 
{
	Param(
		[Parameter(Mandatory=$true)]
		[ValidateNotNullOrEmpty()]
		[String[]]$Value
		
	)
}


Function Mostrar-MensajeCuadroDialogo {
Param
(
[string]$Mensaje, 
[string]$Titulo, 
[System.Windows.Forms.MessageBoxButtons]$Botones, 
[System.Windows.Forms.MessageBoxIcon]$Icono
)
    return [System.Windows.Forms.MessageBox]::Show($Mensaje, $Titulo, $Botones, $Icono)
}


if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $1 = $textBox1.Text
	$2 = $textBox2.Text
	
	try {
		Validate $1
		Validate $2
	}
	catch {
		# "An error occurred that could not be resolved."
		Mostrar-MensajeCuadroDialogo -Mensaje "Uno de los campos no ha sido llenado" -Titulo "Error" -Botones OK -Icono Information
		# $result = $form.ShowDialog()
	}
	
	
	# $1
	# $2
}


$1
$2

# pause