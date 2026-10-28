param([Parameter(Mandatory=$true)][string]$RollNo)
$old = 'VV-Lab-<RollNo>-PSVS'
$new = "VV-Lab-$RollNo-PSVS"
Write-Host "Create/rename your repository folder to: $new"
Write-Host "Use the same name when creating the GitHub repository."
