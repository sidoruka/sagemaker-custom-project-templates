# Region Variable
region = "us-west-2"

# Environment definining Variables
env          = "dev"
organization = "machine-learning"
role         = "ops"

# Service Catalog Owners
sc_portfolio_owner = "Admin"
sc_product_owner   = "Admin"

# Common boundary for the IAM roles
sc_common_roles_boundary = "policy/<BoundaryPolicyName>"

# Service Catalog Launch Role
sc_product_launch_role = "CustomAmazonSagemakerServiceCatalogProductLaunchRole"

# Service Catalog Execution Role. Use the SageMaker Studio Execution Role
sc_portfolio_service_role = "role/service-role/<AmazonSageMakerExecRole>"

# Prefix for DynamoDB Table Name to store Backend TF State
backend_table_prefix = "terraform-tfstate-dev"

# Pass Role Variable for Command Runner to assume Service Catalog
cm_exec_pass_role_arn = "role/service-role/AmazonSageMakerServiceCatalog*"

# Command Runner Exec Role
command_runner_exec_role = "CommandRunnerExecRole"

#GitHub Repo Creds
repo_user_name = ""
repo_password  = ""
