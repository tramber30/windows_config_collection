# Automatically remove "share with skype" from contextual menu

$ErrorActionPreference = 'Stop'  # Stop execution at any error

$Skype_reg_entry = Get-ChildItem -path 'HKLM:\SOFTWARE\Classes\PackagedCom\Package' | Where-Object {$_.name -match  "Microsoft.SkypeApp_*"}
$Full_path = "registry::" + $skype_reg_entry.Name + "\Class\{776DBC8D-7347-478C-8D71-791E12EF49D8}"
Write-Host "remove key: [$Full_path]"

Remove-Item  -Path $Full_path -Confirm