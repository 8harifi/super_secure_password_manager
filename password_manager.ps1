function encrypt($text, $key) {
    $key = [System.Text.Encoding]::UTF8.GetBytes($key)
    while ($key.Length -ne 16 -and $key.Length -ne 24 -and $key.Length -ne 32) {
        $key = $key + [byte]1
    }
    $btext = [System.Text.Encoding]::UTF8.GetBytes($text)
    $aes = [System.Security.Cryptography.Aes]::Create()
    $aes.Key = $key
    $aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
    $aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
    $aes.IV = [byte[]](0..15)
    $enc = $aes.CreateEncryptor()
    $res = $enc.TransformFinalBlock($btext, 0, $btext.Length)
    $enc.Dispose()
    $final_res = [Convert]::ToBase64String($res)
    return $final_res
}

function decrypt($text, $key) {
    $key = [System.Text.Encoding]::UTF8.GetBytes($key)
    while ($key.Length -ne 16 -and $key.Length -ne 24 -and $key.Length -ne 32) {
        $key = $key + [byte]1
    }
    $btext = [Convert]::FromBase64String($text)
    $aes = [System.Security.Cryptography.Aes]::Create()
    $aes.Key = $key
    $aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
    $aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
    $aes.IV = [byte[]](0..15)
    $dec = $aes.CreateDecryptor()
    $res = $dec.TransformFinalBlock($btext, 0, $btext.Length)
    $dec.Dispose()
    $final_res = [System.Text.Encoding]::UTF8.GetString($res)
    return $final_res
}
