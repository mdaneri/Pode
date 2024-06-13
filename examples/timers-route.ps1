try {
    $ScriptPath = (Split-Path -Parent -Path $MyInvocation.MyCommand.Path)
    $podePath = Split-Path -Parent -Path $ScriptPath
    if (Test-Path -Path "$($podePath)/src/Pode.psm1" -PathType Leaf) {
        Import-Module "$($podePath)/src/Pode.psm1" -Force -ErrorAction Stop
    }
    else {
        Import-Module -Name 'Pode' -ErrorAction Stop
    }
}
catch { throw }

# or just:
# Import-Module Pode

# create a basic server
Start-PodeServer -EnablePool Timers {

    Add-PodeEndpoint -Address localhost -Port 8081 -Protocol Http

    # create a new timer via a route
    Add-PodeRoute -Method Get -Path '/api/timer' -ScriptBlock {
        Add-PodeTimer -Name 'example' -Interval 5 -ScriptBlock {
            'hello there' | out-default
        }
    }

}
