Invoke-Expression (&starship init powershell)

Set-Location C:\Users\Fullmoon

# Keep at the end of config
Invoke-Expression (& { (zoxide init powershell | Out-String) })