Invoke-Expression (&starship init powershell)

Set-Location C:\Users\Fullmoon

# Unlocking Bitwarden CLI
Function bw-unlock {$env:BW_SESSION=(bw unlock --raw)}

# Keep at the end of config
Invoke-Expression (& { (zoxide init powershell | Out-String) })