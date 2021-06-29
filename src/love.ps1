[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$app = [System.Windows.Forms.Application]

$font = New-Object System.Drawing.Font("Segoe UI","125")
$bmp = New-Object System.Drawing.Bitmap(520,520)
$point = New-Object System.Drawing.PointF(0,0)
$brush = [System.Drawing.Brushes]::Red

$gh = [System.Drawing.Graphics]
$g = $gh::FromImage($bmp)
$g.DrawString("❤",$font,$brush ,$point)

$myForm = New-Object System.Windows.Forms.Form
$myForm.Text = "Love"
$myForm.BackgroundImage = $bmp

$app::EnableVisualStyles()
$app::Run($myForm)