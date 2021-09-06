$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Usuarios de AD"
$Label.Location = New-Object System.Drawing.Point(0,10)
Autotamaño = $verdadero
$main_form.Controls.Add($Label)

$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$Users = get-aduser -filter * -Properties SamAccountName
Foreach ($User en $Users)
{
$ComboBox.Items.Add($Usuario.NombreDeCuentaSam);
}
$ComboBox.Location = New-Object System.Drawing.Point(60,10)
$main_form.Controls.Add($ComboBox)


$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "Last Password Set:"
$Label2.Location = New-Object System.Drawing.Point(0,40)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Text = ""
$Label3.Location = New-Object System.Drawing.Point(110,40)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)


$Button = New-Object System.Windows.Forms.Button
$Botón.Ubicación = Sistema.de.dibujo.de.nuevos.objetos(400,10)
$Button.Size = New-Object System.Drawing.Size(120,23)
Botón. Texto = "Chequear"
$main_form.Controls.Add($Button)


$Button.Add_Click(
{
$Label3.Text = [datetime]::FromFileTime((Get-ADUser -identity $ComboBox.selectedItem -Properties pwdLastSet).pwdLastSet).ToString($0027MM dd yy : hh ss$0027)
}
)