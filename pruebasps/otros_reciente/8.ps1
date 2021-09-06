# Static Entries ==========================================
$enviroments = "ESP","MEX","USA"
$mailboxserver = "MAILSERVER"
$templateBase = "ou=Plantillas,ou=Altas,dc=dominio,dc=local"
$altaOU = "ou=Altas,dc=dominio,dc=local"
$intdomain = "@dominio.local"
$lyncserver = "lync2013.dominio.local"
$homedrive = "Z"

# Set up the form ========================================
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
$objForm = New-Object System.Windows.Forms.Form
$objForm.Text = "Formulario de alta de usuarios"
$objForm.Size = New-Object System.Drawing.Size(1200,800)
$objForm.StartPosition = "CenterScreen"
$objForm.KeyPreview = $True

# Add Title =============================================
$title = New-Object System.Windows.Forms.Label
$title.Text = "Formulario de alta de usuarios"
$title.AutoSize = $True
$objForm.Controls.Add($title)

# Activate the form (At the End) ==============================
$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()

# Add Cancel Button ======================================
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Size(700,720)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "Cancelar"
$CancelButton.Add_Click({$objForm.Close()})
$objForm.Controls.Add($CancelButton)

# Add the list of enviroments ==================================
$objLabelEnviroment = New-Object System.Windows.Forms.Label
$objLabelEnviroment.Location = New-Object System.Drawing.Size(50,40)
$objLabelEnviroment.Size = New-Object System.Drawing.Size(149,20)
$objLabelEnviroment.Text = "Escoge un entorno:"
$objForm.Controls.Add($objLabelEnviroment)
$objEnviromentsListbox = New-Object System.Windows.Forms.Listbox
$objEnviromentsListbox.Location = New-Object System.Drawing.Size(50,60)
# $objEnviromentsListbox.Size = New-Object System.Drawing.Size(260,320)
$objForm.Controls.Add($objEnviromentsListbox)
foreach ($enviroment in $enviroments)
{
 [void] $objEnviromentsListbox.Items.Add($enviroment)
}

# Add Name TextBox ======================================
$objLabelName = New-Object System.Windows.Forms.Label
$objLabelName.Location = New-Object System.Drawing.Size(250,40)
$objLabelName.Size = New-Object System.Drawing.Size(280,20)
$objLabelName.Text = "Introduzca el nombre:"
$objForm.Controls.Add($objLabelName)
$objTextBoxName = New-Object System.Windows.Forms.TextBox
$objTextBoxName.Location = New-Object System.Drawing.Size(250,60)
$objTextBoxName.Size = New-Object System.Drawing.Size(260,20)
$objForm.Controls.Add($objTextBoxName)
# Add Surname TextBox ====================================
$objLabelSurname = New-Object System.Windows.Forms.Label
$objLabelSurname.Location = New-Object System.Drawing.Size(250,90)
$objLabelSurname.Size = New-Object System.Drawing.Size(280,20)
$objLabelSurname.Text = "Introduzca el/los apellidos:"
$objForm.Controls.Add($objLabelSurname)
$objTextBoxSurname = New-Object System.Windows.Forms.TextBox
$objTextBoxSurname.Location = New-Object System.Drawing.Size(250,110)
$objTextBoxSurname.Size = New-Object System.Drawing.Size(260,20)
$objForm.Controls.Add($objTextBoxSurname)
# Add User Acount Name TextBox ==============================
$objLabelUsername = New-Object System.Windows.Forms.Label
$objLabelUsername.Location = New-Object System.Drawing.Size(250,140)
$objLabelUsername.Size = New-Object System.Drawing.Size(280,20)
$objLabelUsername.Text = "Introduzca el nombre de usuario:"
$objForm.Controls.Add($objLabelUsername)
$objTextBoxUsername = New-Object System.Windows.Forms.TextBox
$objTextBoxUsername.Location = New-Object System.Drawing.Size(250,160)
$objTextBoxUsername.Size = New-Object System.Drawing.Size(260,20)
$objForm.Controls.Add($objTextBoxUsername)

# Add Passowrd TextBox ===================================
$objLabelPassword = New-Object System.Windows.Forms.Label
$objLabelPassword.Location = New-Object System.Drawing.Size(250,190)
$objLabelPassword.Size = New-Object System.Drawing.Size(280,20)
$objLabelPassword.Text = "Introduzca el password:"
$objForm.Controls.Add($objLabelPassword)
$objTextBoxPassword = New-Object System.Windows.Forms.TextBox
$objTextBoxPassword.Location = New-Object System.Drawing.Size(250,210)
$objTextBoxPassword.Size = New-Object System.Drawing.Size(260,20)
$objForm.Controls.Add($objTextBoxPassword)
# Add Email Alias TextBox ==================================
$objLabelAlias = New-Object System.Windows.Forms.Label
$objLabelAlias.Location = New-Object System.Drawing.Size(250,240)
$objLabelAlias.Size = New-Object System.Drawing.Size(280,20)
$objLabelAlias.Text = "Introduzca el alias de correo:"
$objForm.Controls.Add($objLabelAlias)
$objTextBoxAlias = New-Object System.Windows.Forms.TextBox
$objTextBoxAlias.Location = New-Object System.Drawing.Size(250,260)
$objTextBoxAlias.Size = New-Object System.Drawing.Size(260,20)
$objForm.Controls.Add($objTextBoxAlias)


