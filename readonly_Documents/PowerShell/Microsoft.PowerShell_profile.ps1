Import-Module Terminal-Icons
Invoke-Expression (&starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Remove the default PowerShell alias for ls
if (Test-Path Alias:ls) { Remove-Item Alias:ls -Force }

# Define Unix-style ls using eza
function ls {
    eza --grid --icons=always --group-directories-first $args
}

# Define Unix-style ll for detailed view
function ll {
    eza --long --header --icons=always --git --group-directories-first $args
}

# Define la for hidden files
function la {
    eza --all --grid --icons=always --group-directories-first $args
}



