#!/bin/bash
# Generate the PEM certificate and private key
openssl req -x509 -newkey rsa:2048 -keyout contoso-api-key.pem -out contoso-api-cert.pem -days 365 -nodes -subj "/CN=Contoso-Internal-API/O=Contoso Ltd"

# Bundle the certificate and key into a PFX format for local Windows testing
openssl pkcs12 -export -out contoso-api-cert.pfx -inkey contoso-api-key.pem -in contoso-api-cert.pem -passout pass: