function Add-PodeScriptBlock {
    param (
        [Parameter(Mandatory, Position = 0)]
        [string]$Name,

        [Parameter(Mandatory, Position = 1)]
        [scriptblock]$ScriptBlock,

        [Parameter(Position = 2)]
        [ValidateSet('Global', 'Script')]
        [string]$Scope
    )

    # Detect scope from Name prefix if -Scope is not explicitly provided
    if (! $Scope -and $Name -match '^(global|script):(.+)$') {
        $Scope = $matches[1]   # Extract scope from prefix
        $CleanName = $matches[2]  # Extract actual function name
    }
    else {
        if (! $Scope) { $Scope = 'Script' }
        $CleanName = $Name
    }

    Set-Item -Path function:$($Scope):Get-PodeScriptBlock_$CleanName -Value "return {$($ScriptBlock.ToString())}"

    # Define an alias for easier retrieval
    Set-Alias -Name "ScriptBlock:$CleanName" -Value "Get-PodeScriptBlock_$CleanName" -Scope $Scope
}

function Get-PodeScriptBlockList {
    Get-Command -CommandType Function | Where-Object { $_.Name -like 'Get-PodeScriptBlock_*' } |
        ForEach-Object { 'ScriptBlock:' + ($_.Name -replace '^Get-PodeScriptBlock_', '') }
}

# Create a global alias for Add-PodeScriptBlock
Set-Alias -Name ScriptBlock -Value Add-PodeScriptBlock -Scope Global
