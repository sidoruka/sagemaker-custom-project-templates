#------------------------------------------------#
# Terraform Main Component
# Has the following block definitions:
# - AWS Provider
# - Data Source for AWS Caller Identity
# - Important Outputs of this Terraform execution
#------------------------------------------------#

terraform {
  backend "s3" {
    bucket         = "bioaim-ai-tfstate-store"
    key            = "dev/sagemaker-project-dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "bioaim-ai-terraform-lock"
  }
}
#AWS Provider
provider "aws" {}


#Data Source for Caller Identity
data "aws_caller_identity" "current" {}


#Important Outputs

#Command Runner IAM Exec Role Instance Profile
output "command_runner_instance_profile" {
  value = aws_iam_instance_profile.c_runner_instance_profile.name
}

#S3 Bucket Name
output "s3_bucket_id" {
  value = aws_s3_bucket.terraform_data_source_s3.id
}

#Secrets Manager Secret Name
output "secrets_manager_github_secret_arn" {
  value = aws_secretsmanager_secret.git_repo_secret.arn
}

#Service Catalog Product Name
output "service_catalog_product_name" {
  value = aws_servicecatalog_product.mlops_tf_sc_product.name
}

#CloudWatch Log Group Name
output "cw_log_group_name" {
  value = aws_cloudwatch_log_group.command_runner_logs.name
}
