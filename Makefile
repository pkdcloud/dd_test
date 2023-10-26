

# THESE WILL BE IN YOUR ENV THIS IS FOR DEMO ONLY dont export them in your makefile like this
export TF_VAR_datadog_api_key="abcdef12345"
export TF_VAR_datadog_app_key="12345abcdef"

init:
	@echo "[ :terraform: ] Executing terraform init"
	docker-compose run --rm terraform init

plan: init
	@echo "[ :terraform: ] Executing terraform plan"
	docker-compose run --rm terraform plan
