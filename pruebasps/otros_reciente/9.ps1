using assembly System.Windows.Forms
using namespace System.Windows.Forms
$form = [Form] @{
 Text = 'Mi formulario'
}
$button = [Button] @{
 Text = 'Pulsar'
 Dock = 'Fill'
}
$button.add_Click{
 $form.Close()
}
$form.Controls.Add($button)
$form.ShowDialog()