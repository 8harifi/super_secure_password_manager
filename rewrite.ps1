. .\password_manager.ps1

$file_name = Read-Host "[?] File Name"
Write-Output "[?] New Text:"
$input = Read-Host
$inputs = ""
while ($input -ne "exit") {
    $inputs += $input + "`n"
    $input = Read-Host
}


$key = Read-Host "[?] Key"

$res = encrypt $inputs $key

Set-Content -Path $file_name -Value $res

