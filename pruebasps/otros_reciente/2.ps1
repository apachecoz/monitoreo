#Cargo los Assemblies (necesario para definir el form)
  [void][reflection.assembly]::loadwithpartialname("System.Windows.Forms")
  [void][reflection.assembly]::loadwithpartialname("System.Drawing")
  #Creo el objeto Form
  $Form = New-Object System.Windows.Forms.Form
  #Defino el tama�o del formulario
  $Form.Size = New-Object Drawing.Size(400,200)
  #Defino la posici�n inicial
  $Form.StartPosition = "CenterScreen"
  #Defino el titulo del formulario
  $Form.Text = "Mi primer formulario"

  #Defino la etiqueta
  $Label = New-Object System.Windows.Forms.Label
  #Defino el tama�o de la etiqueta
  $Label.Size = New-Object System.Drawing.Size(200,20)
  #Defino la posici�n de la etiqueta
  $Label.Location = New-Object System.Drawing.Size(110,50)
  #Defino el texto de la etiqueta
  $Label.Text = "Esto es el texto de la etiqueta"
  #Cargo la etiqueta en el formulario
  $Form.Controls.Add($Label)

  #Defino el bot�n
  $Button = New-Object System.Windows.Forms.Button
  #Defino la posici�n del bot�n
  $Button.Location = New-Object System.Drawing.Size(150,100)
  #Defino el texto del bot�n
  $Button.Text = "Salir"
  #Defino el evento al hacer el clic
  $Button.Add_Click({$Form.Close()})

  #Cargo el bot�n al formulario
  $Form.Controls.Add($Button)

  #Ejecuto el formulario
  [void]$Form.ShowDialog()