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
function Add-PodeIScriptBlock {
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

    Set-Item -Path function:$($Scope):Get-PodeInternalScriptBlock_$CleanName -Value "return {$($ScriptBlock.ToString())}"

    # Define an alias for easier retrieval
    Set-Alias -Name "iScriptBlock:$CleanName" -Value "Get-PodeInternalScriptBlock_$CleanName" -Scope $Scope
}


# Create a global alias for Add-PodeScriptBlock
Set-Alias -Name iScriptBlock -Value Add-PodeIScriptBlock -Scope Global
