<#
.SYNOPSIS
    A sample PowerShell script to set up a Pode server with OpenAPI integration and basic authentication.

.DESCRIPTION
    This script sets up a Pode server listening on multiple endpoints with OpenAPI documentation.
    It demonstrates how to handle GET, POST, and PUT requests, use OpenAPI for documenting APIs, and implement basic authentication.
    The script includes routes under the '/api' path and provides various OpenAPI viewers such as Swagger, ReDoc, RapiDoc, StopLight, Explorer, and RapiPdf.

.EXAMPLE
    To run the sample: ./Web-RestOpenApi.ps1

    OpenAPI Info:
    Specification:
        http://localhost:8081/openapi
        http://localhost:8082/openapi
    Documentation:
        http://localhost:8081/docs
        http://localhost:8082/docs

.LINK
    https://github.com/Badgerati/Pode/blob/develop/examples/Web-RestOpenApi.ps1

.NOTES
    Author: Pode Team
    License: MIT License
#>
try {
    # Determine the script path and Pode module path
    $ScriptPath = (Split-Path -Parent -Path $MyInvocation.MyCommand.Path)
    $podePath = Split-Path -Parent -Path $ScriptPath

    # Import the Pode module from the source path if it exists, otherwise from installed modules
    if (Test-Path -Path "$($podePath)/src/Pode.psm1" -PathType Leaf) {
        Import-Module "$($podePath)/src/Pode.psm1" -Force -ErrorAction Stop
    }
    else {
        Import-Module -Name 'Pode' -MaximumVersion 2.99 -ErrorAction Stop
    }
}
catch { throw }

Start-PodeServer {
    Add-PodeEndpoint -Address localhost -Port 8081 -Protocol Http -Name 'user'
    Add-PodeEndpoint -Address localhost -Port 8082 -Protocol Http -Name 'admin'

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging

    Enable-PodeOpenApi -DisableMinimalDefinitions
    Add-PodeOAInfo  -Title 'OpenAPI Example'
    Enable-PodeOAViewer -Type Swagger -Path '/docs/swagger'
    Enable-PodeOAViewer -Type ReDoc  -Path '/docs/redoc'
    Enable-PodeOAViewer -Type RapiDoc  -Path '/docs/rapidoc'
    Enable-PodeOAViewer -Type StopLight  -Path '/docs/stoplight'
    Enable-PodeOAViewer -Type Explorer  -Path '/docs/explorer'
    Enable-PodeOAViewer -Type RapiPdf  -Path '/docs/rapipdf'
    Enable-PodeOAViewer -Editor -Path '/docs/editor'
    Enable-PodeOAViewer -Bookmarks -Path '/docs'

    New-PodeAuthScheme -Basic | Add-PodeAuth -Name 'Validate' -Sessionless -ScriptBlock {
        return @{
            User = @{
                ID ='M0R7Y302'
                Name = 'Morty'
                Type = 'Human'
            }
        }
    }


    Add-PodeRoute -Method Get -Path "/api/resources" -Authentication Validate -EndpointName 'user' -ScriptBlock {
        Set-PodeResponseStatus -Code 200
    } -PassThru |
        Set-PodeOARouteInfo -Summary 'A cool summary' -Tags 'Resources' -PassThru |
        Add-PodeOAResponse -StatusCode 200 -PassThru |
        Add-PodeOAResponse -StatusCode 404

    Add-PodeRoute -Method Post -Path "/api/resources" -ScriptBlock {
        Set-PodeResponseStatus -Code 200
    } -PassThru |
        Set-PodeOARouteInfo -Summary 'A cool summary' -Tags 'Resources' -PassThru |
        Add-PodeOAResponse -StatusCode 200 -PassThru |
        Add-PodeOAResponse -StatusCode 404


    Add-PodeRoute -Method Get -Path '/api/users/:userId' -ScriptBlock {
        Write-PodeJsonResponse -Value @{ Name = 'Rick'; UserId = $WebEvent.Parameters['userId'] }
    } -PassThru |
        Set-PodeOARouteInfo -Summary 'A cool summary' -Tags 'Users' -PassThru |
        Set-PodeOARequest -Parameters @(
            (New-PodeOAIntProperty -Name 'userId' -Required | ConvertTo-PodeOAParameter -In Path)
        ) -PassThru |
        Add-PodeOAResponse -StatusCode 200 -Description 'A user object' -ContentSchemas @{
            'application/json' = (New-PodeOAObjectProperty -Properties @(
                (New-PodeOAStringProperty -Name 'Name'),
                (New-PodeOAIntProperty -Name 'UserId')
            ))
        }


    Add-PodeRoute -Method Get -Path '/api/users' -ScriptBlock {
        Write-PodeJsonResponse -Value @{ Name = 'Rick'; UserId = $WebEvent.Query['userId'] }
    } -PassThru |
        Set-PodeOARouteInfo -Summary 'A cool summary' -Tags 'Users' -PassThru |
        Set-PodeOARequest -Parameters @(
            (New-PodeOAIntProperty -Name 'userId' -Required | ConvertTo-PodeOAParameter -In Query)
        ) -PassThru |
        Add-PodeOAResponse -StatusCode 200 -Description 'A user object'


    Add-PodeRoute -Method Post -Path '/api/users' -Authentication Validate -ScriptBlock {
        Write-PodeJsonResponse -Value @{ Name = 'Rick'; UserId = $WebEvent.Data.userId }
    } -PassThru |
        Set-PodeOARouteInfo -Summary 'A cool summary' -Tags 'Users' -PassThru |
        Set-PodeOARequest -RequestBody (
            New-PodeOARequestBody -Required -ContentSchemas @{
                'application/json' = (New-PodeOAIntProperty -Name 'userId' -Object)
            }
        ) -PassThru |
        Add-PodeOAResponse -StatusCode 200 -Description 'A user object'

    Add-PodeRoute -Method Put -Path '/api/users' -ScriptBlock {
        $users = @()
        foreach ($id in $WebEvent.Data) {
            $users += @{
                Name = (New-Guid).Guid
                UserIdd = $id
            }
        }

        Write-PodeJsonResponse -Value $users
    } -PassThru |
        Set-PodeOARouteInfo -Tags 'Users' -PassThru |
        Set-PodeOARequest -RequestBody (
            New-PodeOARequestBody -Required -ContentSchemas @{
                'application/json' = (New-PodeOAIntProperty -Name 'userId' -Array)
            }
        ) -PassThru |
        Add-PodeOAResponse -StatusCode 200 -Description 'A list of users' -ContentSchemas @{
            'application/json' = (New-PodeOAObjectProperty -Array -Properties @(
                (New-PodeOAStringProperty -Name 'Name'),
                (New-PodeOAIntProperty -Name 'UserId')
            ))
        }
}