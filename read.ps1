. .\password_manager.ps1

$file_name = Read-Host "[?] File Name"
$key = Read-Host "[?] Key"

$content = Get-Content -Path $file_name

$res = decrypt $content $key
Write-Output $res

