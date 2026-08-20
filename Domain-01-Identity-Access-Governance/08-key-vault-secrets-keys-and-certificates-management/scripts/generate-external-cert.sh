#Generating local self-signed certificate pair
openssl req -x509 -newkey rsa:2048 -keyout external-key.pem -out external-cert.pem -days 365 -nodes -subj "/CN=external.contoso.com/O=Contoso Ltd/C=US"

#Exporting to PFX format
openssl pkcs12 -export -out external-cert.pfx -inkey external-key.pem -in external-cert.pem -passout pass:TempP@ss123