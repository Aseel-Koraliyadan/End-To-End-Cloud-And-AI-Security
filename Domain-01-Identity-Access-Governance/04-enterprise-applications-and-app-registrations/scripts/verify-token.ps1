# Authenticate as the Service Principal using the generated certificate
$TenantId = "<YOUR_TENANT_ID>"
$ClientId = "<YOUR_APP_CLIENT_ID>"
$CertPath = ".\contoso-api-cert.pfx"

# Load the certificate from the file
$Cert = [System.Security.Cryptography.X509Certificates.X509Certificate2]::new($CertPath, "")

# Request the access token
$TokenResponse = Get-MsalToken -TenantId $TenantId -ClientId $ClientId -ClientCertificate $Cert -Scopes "https://graph.microsoft.com/.default"

# Output the token (Decode this at jwt.ms to verify permissions)
$TokenResponse.AccessToken