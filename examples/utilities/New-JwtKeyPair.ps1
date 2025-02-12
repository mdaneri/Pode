<#
.SYNOPSIS
  Generates JWT key pairs for testing and example purposes.

.DESCRIPTION
  This utility generates RSA and ECDSA key pairs based on the specified mode:
  - "Test" mode: Keys are created under "./tests/certs"
  - "Example" mode: Keys are created under "./examples/certs"

.PARAMETER Mode
  Specifies the mode of key generation. Accepts "Test" or "Example".

.PARAMETER Algorithm
  Specifies the algorithms to generate keys for. Accepts an array of values (e.g., "RS256", "ES256") or "ALL".

.OUTPUTS
  PEM-encoded private and public key files.

.EXAMPLE
  # Generate all keys for testing
  .\New-JwtKeyPair.ps1 -Mode Test

.EXAMPLE
  # Generate only RS256 and ES256 keys for examples
  .\New-JwtKeyPair.ps1 -Mode Example -Algorithm RS256,ES256

.LINK
    https://github.com/Badgerati/Pode/blob/develop/examples/utilities/New-JwtKeyPair.ps1

.NOTES
  - Keys are stored in the respective directories: "./tests/certs" or "./examples/certs"
  - Requires PowerShell 7+

.NOTES
    Author: Pode Team
    License: MIT License
#>

param (
  [Parameter(Mandatory = $true)]
  [ValidateSet('Test', 'Example')]
  [string]$Mode,

  [string[]]$Algorithm = @('ALL')
)

### Helper Functions for Key Export ###
function Export-RsaPrivateKeyPem {
  param (
    [System.Security.Cryptography.RSA]$RsaKey
  )
  $pemHeader = '-----BEGIN RSA PRIVATE KEY-----'
  $pemFooter = '-----END RSA PRIVATE KEY-----'
  $base64 = [Convert]::ToBase64String($RsaKey.ExportRSAPrivateKey(), 'InsertLineBreaks')
  return "$pemHeader`n$base64`n$pemFooter"
}


function Export-RsaPublicKeyPem {
  param ([System.Security.Cryptography.RSA]$RsaKey)
  $pemHeader = '-----BEGIN RSA PUBLIC KEY-----'
  $pemFooter = '-----END RSA PUBLIC KEY-----'
  $base64 = [Convert]::ToBase64String($RsaKey.ExportRSAPublicKey(), 'InsertLineBreaks')
  return "$pemHeader`n$base64`n$pemFooter"
}

function Export-EcdsaPrivateKeyPem {
  param ([System.Security.Cryptography.ECDsa]$EcdsaKey)
  $pemHeader = '-----BEGIN EC PRIVATE KEY-----'
  $pemFooter = '-----END EC PRIVATE KEY-----'
  $base64 = [Convert]::ToBase64String($EcdsaKey.ExportECPrivateKey(), 'InsertLineBreaks')
  return "$pemHeader`n$base64`n$pemFooter"
}

function Export-EcdsaPublicKeyPem {
  param ([System.Security.Cryptography.ECDsa]$EcdsaKey)
  $pemHeader = '-----BEGIN PUBLIC KEY-----'
  $pemFooter = '-----END PUBLIC KEY-----'
  $base64 = [Convert]::ToBase64String($EcdsaKey.ExportSubjectPublicKeyInfo(), 'InsertLineBreaks')
  return "$pemHeader`n$base64`n$pemFooter"
}
function Export-PfxPrivateKey {
  param (
    [Parameter(Mandatory = $true)]
    [System.Security.Cryptography.AsymmetricAlgorithm]$Key,

    [Parameter(Mandatory = $true)]
    [string]$CertPath
  )

  # Define certificate validity (1 year)
  $notBefore = (Get-Date).ToUniversalTime()
  $notAfter = $notBefore.AddYears(1)
  $subject = 'CN=JWT-Test-Cert'

  # Handle RSA and ECDSA key types
  if ($Key -is [System.Security.Cryptography.RSA]) {
    $req = [System.Security.Cryptography.X509Certificates.CertificateRequest]::new(
      $subject,
      $Key,
      [System.Security.Cryptography.HashAlgorithmName]::SHA256,
      [System.Security.Cryptography.RSASignaturePadding]::Pkcs1
    )
  }
  elseif ($Key -is [System.Security.Cryptography.ECDsa]) {
    $req = [System.Security.Cryptography.X509Certificates.CertificateRequest]::new(
      $subject,
      $Key,
      [System.Security.Cryptography.HashAlgorithmName]::SHA256
    )
  }
  else {
    throw 'Unsupported key type. Only RSA and ECDSA are supported.'
  }

  # Generate a self-signed certificate
  $cert = $req.CreateSelfSigned($notBefore, $notAfter)

  # Export to PFX with the private key
  $pfxBytes = $cert.Export([System.Security.Cryptography.X509Certificates.X509ContentType]::Pfx)
  # Save to file
  [System.IO.File]::WriteAllBytes($CertPath, $pfxBytes)
}





# Determine output directory based on mode
$RootPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$BaseOutputDirectory = if ($Mode -eq 'Test') { "$RootPath/../../tests/certs" } else { "$RootPath/../../examples/certs" }

if (Test-Path -Path $BaseOutputDirectory) {
  Remove-Item -Path "$BaseOutputDirectory/*.pem"
}
else {
  New-Item -Path $BaseOutputDirectory -ItemType Directory
}

# Key settings mapping
$keySettings = @{
  'RS256' = 2048
  'RS384' = 3072
  'RS512' = 4096
  'ES256' = [System.Security.Cryptography.ECCurve]::CreateFromFriendlyName('nistP256')
  'ES384' = [System.Security.Cryptography.ECCurve]::CreateFromFriendlyName('nistP384')
  'ES512' = [System.Security.Cryptography.ECCurve]::CreateFromFriendlyName('nistP521')
}

# Ensure output directory exists
if (-Not (Test-Path $BaseOutputDirectory)) {
  New-Item -ItemType Directory -Path $BaseOutputDirectory -Force | Out-Null
}

# Determine algorithms to generate
$algorithmsToGenerate = if ($Algorithm -contains 'ALL') { $keySettings.Keys } else { $Algorithm }

foreach ($alg in $algorithmsToGenerate) {
  if (-Not $keySettings.ContainsKey($alg)) {
    Write-Output "❌ Unsupported algorithm: $alg. Skipping..."
    Continue
  }

  $privateKeyPath = "$BaseOutputDirectory/$alg-private.pem"
  $publicKeyPath = "$BaseOutputDirectory/$alg-public.pem"
  $privateKeyPfxPath = "$BaseOutputDirectory/$alg-private.pfx"

  Write-Output "🔹 Generating keys for: $alg..."

  if ($alg -match '^RS') {
    #$rsa = [System.Security.Cryptography.RSA]::Create($keySettings[$alg])

    # Generate PEM
    #  $privatePem = Export-RsaPrivateKeyPem $rsa
    #  Set-Content -Path $privateKeyPath -Value $privatePem

    #   $publicPem = Export-RsaPublicKeyPem $rsa
    #   Set-Content -Path $publicKeyPath -Value $publicPem

    # Generate PFX
    #Export-PfxPrivateKey -Key $rsa -CertPath $privateKeyPfxPath

    # Use New-SelfSignedCertificate for RSA
    try {
      $cert = New-SelfSignedCertificate -DnsName 'jwt.test' -CertStoreLocation 'Cert:\CurrentUser\My' -KeyAlgorithm RSA -KeyLength $keySettings[$alg]

      # Export PFX
      $securePassword = ConvertTo-SecureString -String 'MySecurePassword' -Force -AsPlainText
      Export-PfxCertificate -Cert $cert -FilePath $privateKeyPfxPath -Password $securePassword

      # Export Public Key to PEM
      # $publicPem = [System.Convert]::ToBase64String($cert.RawData, 'InsertLineBreaks')
      # Set-Content -Path $publicKeyPath -Value "-----BEGIN CERTIFICATE-----`n$publicPem`n-----END CERTIFICATE-----"




      # Load the PFX certificate (ensure it's exportable)
      $pfxCert = [System.Security.Cryptography.X509Certificates.X509Certificate2]::new($privateKeyPfxPath, 'MySecurePassword', [System.Security.Cryptography.X509Certificates.X509KeyStorageFlags]::Exportable)
      # Export Public Key to PEM
      #$publicPem ="-----BEGIN CERTIFICATE-----`n$( [System.Convert]::ToBase64String($cert.RawData, 'InsertLineBreaks'))`n-----END CERTIFICATE-----"
     # Set-Content -Path $publicKeyPath -Value $publicPem

     # Set-Content -Path $privateKeyPath -Value $pfxCert.PrivateKey.ExportRSAPrivateKeyPem()
    }
    finally {
      # Cleanup from Windows Cert Store
      Remove-Item -Path "Cert:\CurrentUser\My\$($cert.Thumbprint)" -Force -ErrorAction SilentlyContinue
    }
  }
  elseif ($alg -match '^ES') {
    $ec = [System.Security.Cryptography.ECDsa]::Create($keySettings[$alg])
    if ($null -eq $ec) {
      throw "Failed to create ECDSA key for $alg. Ensure your system supports ECC."
    }

    # Generate PEM
    $privatePem = Export-EcdsaPrivateKeyPem $ec
    Set-Content -Path $privateKeyPath -Value $privatePem

    $publicPem = Export-EcdsaPublicKeyPem $ec
    Set-Content -Path $publicKeyPath -Value $publicPem

    # Generate PFX
    Export-PfxPrivateKey -Key $ec -CertPath $privateKeyPfxPath
  }

  Write-Output "✅ Keys generated: $privateKeyPath & $publicKeyPath"
}

Write-Output "🎉 All requested keys generated successfully in: $BaseOutputDirectory"
