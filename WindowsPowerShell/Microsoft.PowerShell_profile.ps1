# Set working directory
Set-Location "C:\Users\runak\Coding"

# Import Modules
Import-Module Terminal-Icons
Import-Module PSReadLine

# PSReadLine Configuration
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -Colors @{
    Command            = [ConsoleColor]::Green
    Number             = [ConsoleColor]::Yellow
    Member             = [ConsoleColor]::Cyan
    Operator           = [ConsoleColor]::Magenta
    Type               = [ConsoleColor]::Gray
    Variable           = [ConsoleColor]::White
    Parameter          = [ConsoleColor]::DarkCyan
    ContinuationPrompt = [ConsoleColor]::DarkGray
    Default           = [ConsoleColor]::DarkGray
}

# Oh My Posh Theme (only one theme initialization should be used)
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\M365Princess.omp.json" | Invoke-Expression

# Aliases
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

# Directory Colors
if (Get-Command -Name 'PSStyle' -ErrorAction 'Ignore') {
    $PSStyle.FileInfo.Directory = "`e[34m"
}