<#
.SYNOPSIS
    Creates a dynamically callable Pode script block.

.DESCRIPTION
    This function registers a script block and stores it as a function that can be retrieved later.
    The script block can be defined under the 'Global' or 'Script' scope, either via the Name prefix
    (e.g., "global:myBlock") or explicitly using the -Scope parameter.

.PARAMETER Name
    The name of the script block. Can include 'global:' or 'script:' to define the scope.

.PARAMETER ScriptBlock
    The script block that will be stored and callable dynamically.

.PARAMETER Scope
    (Optional) The scope of the script block. Valid values: 'Global', 'Script'.
    Defaults to 'Script' if not explicitly provided.

.EXAMPLE
    ScriptBlock script:TestBlock { param ($User) "Hello, $User!" }

.EXAMPLE
    ScriptBlock myBlock -Scope Global { param ($Message) "Log: $Message" }

.OUTPUTS
    None. Registers a script block that can be retrieved later.

.NOTES
    - Dynamically creates functions following the format: Get-PodeScriptBlock_<Name>
    - Also creates an alias in the format: ScriptBlock:<Name>
#>
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

<#
.SYNOPSIS
    Lists all dynamically created Pode script blocks.

.DESCRIPTION
    Retrieves all script blocks that were registered using Add-PodeScriptBlock
    and formats their names in a human-readable way.

.EXAMPLE
    Get-PodeScriptBlockList

.OUTPUTS
    A list of registered script block names in the format: ScriptBlock:<Name>

.NOTES
    - Only lists script blocks created via Add-PodeScriptBlock
#>
function Get-PodeScriptBlockList {
    Get-Command -CommandType Function | Where-Object { $_.Name -like 'Get-PodeScriptBlock_*' } |
        ForEach-Object { 'ScriptBlock:' + ($_.Name -replace '^Get-PodeScriptBlock_', '') }
}

<#
.SYNOPSIS
    Removes all dynamically created Pode script blocks.

.DESCRIPTION
    Deletes all functions and aliases that were dynamically registered using Add-PodeScriptBlock.

.EXAMPLE
    Remove-PodeScriptBlock

.OUTPUTS
    None.

.NOTES
    - Only removes script blocks that were registered dynamically
#>
function Remove-PodeScriptBlock {
    # Find all dynamically created script block functions
    $scriptBlockFunctions = Get-Command -CommandType Function | Where-Object { $_.Name -like "Get-PodeScriptBlock_*" }

    # Remove each found function
    foreach ($function in $scriptBlockFunctions) {
        Remove-Item -Path "Function:\$($function.Name)" -ErrorAction SilentlyContinue
    }

    # Find all aliases associated with script blocks
    $scriptBlockAliases = Get-Alias | Where-Object { $_.Name -like "ScriptBlock:*" }

    # Remove each alias
    foreach ($alias in $scriptBlockAliases) {
        Remove-Item -Path "Alias:\$($alias.Name)" -ErrorAction SilentlyContinue
    }
}

<#
.SYNOPSIS
    Clears all dynamically created Pode script blocks and their aliases.

.DESCRIPTION
    Completely removes all script blocks and aliases created via Add-PodeScriptBlock.
    This function is similar to Remove-PodeScriptBlock but also provides a confirmation message.

.EXAMPLE
    Clear-PodeScriptBlock

.OUTPUTS
    None. Displays a confirmation message upon successful removal.

.NOTES
    - Will remove all dynamically registered script blocks.
    - Prints "All dynamically created Pode script blocks and aliases have been removed."
#>
function Clear-PodeScriptBlock {
    # Find all dynamically created script block functions
    $scriptBlockFunctions = Get-Command -CommandType Function | Where-Object { $_.Name -like "Get-PodeScriptBlock_*" }

    # Remove each found function
    foreach ($function in $scriptBlockFunctions) {
        Remove-Item -Path "Function:\$($function.Name)" -ErrorAction SilentlyContinue
    }

    # Find all aliases associated with script blocks
    $scriptBlockAliases = Get-Alias | Where-Object { $_.Name -like "ScriptBlock:*" }

    # Remove each alias
    foreach ($alias in $scriptBlockAliases) {
        Remove-Item -Path "Alias:\$($alias.Name)" -ErrorAction SilentlyContinue
    }

    Write-Output "All dynamically created Pode script blocks and aliases have been removed."
}

# Create a global alias for Add-PodeScriptBlock
Set-Alias -Name ScriptBlock -Value Add-PodeScriptBlock -Scope Global
