_default:
	@just --list

gen-secrets:
	@echo "Generating secrets to put in ./esphome/secrets.yaml based on ./esphome/secrets.example.yaml"
	@echo
	@echo "ota_password: $(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 24)"
	@echo "api_encryption_key: $(openssl rand -base64 32)"
