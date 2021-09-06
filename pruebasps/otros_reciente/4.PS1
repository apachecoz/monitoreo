#Crear un formulario, añadir una etiqueta, un botón y una caja de texto
#Funcionalidad para el formulario:
#Pulsar la tecla Enter almacena en una variable el contenido de la caja de texto y se muestra
#Pulsar la tecla Escape sale del formulario
 
#Formulario
$Form = New-Object System.Windows.Forms.Form
$Form.Text="Formulario"
$Form.Size=New-Object System.Drawing.Size(500,500)
$Form.StartPosition="CenterScreen"
 
#Etiqueta
$Label=New-Object System.Windows.Forms.Label
$Label.Text="Etiqueta de ejemplo"
$Label.AutoSize=$True
$Label.Location=New-Object System.Drawing.Size(160,160)
 
#Botón
$Button=New-Object System.Windows.Forms.Button
$Button.Size=New-Object System.Drawing.Size(75,23)
$Button.Text="Botón de ejmplo"
$Button.Location=New-Object System.Drawing.Size(180,180)
 
#Caja de texto
$TextBox = New-Object System.Windows.Forms.TextBox
$TextBox.Location = New-Object System.Drawing.Size(100,220)
$TextBox.Size = New-Object System.Drawing.Size(260,20)
 
#Funcionalidad para el formulario:
#Pulsar la tecla Enter almacena en una variable el contenido de la caja de texto y se muestra
#Pulsar la tecla Escape sale del formulario
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$TextBox.Text;Write-Host $Var;$Form.Close()}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
 
#Añadir etiqueta
$Form.Controls.Add($Label)
 
#Añadir botón
$Form.Controls.Add($Button)
 
#Añadir caja de texto
$Form.Controls.Add($TextBox)
 
$Form.ShowDialog()