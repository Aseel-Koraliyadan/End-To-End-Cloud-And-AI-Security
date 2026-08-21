KV_NAME="[your-kv-name]"

# Populate test secrets
for i in $(seq 1 20); do
  az keyvault secret set --vault-name $KV_NAME --name "test-secret-$i" --value "test-value-$(openssl rand -hex 16)" > /dev/null
done

# Simulate mass secret enumeration (triggers KV_MassSecretRetrieval)
for i in $(seq 1 5); do
  az keyvault secret list --vault-name $KV_NAME --query "[].name" -o tsv > /dev/null
  az keyvault secret list --vault-name $KV_NAME --include-managed true > /dev/null
done
for i in $(seq 1 20); do
  az keyvault secret show --vault-name $KV_NAME --name "test-secret-$i" --query value -o tsv > /dev/null 2>&1
done