#----------------------------------------#
# This component has all the Local values
#----------------------------------------#

locals {

  # Account ID  
  account_id = data.aws_caller_identity.current.account_id

  # Common Resource Name  
  cmn_res_name = "${var.env}-${var.organization}-${var.role}"
  s3_cmn_res_name = "${var.env}-${var.organization}-${var.role}"
  mlops_custom_prj_name = "Github-FSx-MLOps"

  # Folder of the SageMaker Project CFN template  
  cfn_folder = "cfn-source"
  cfn_sm_key = "sm-project-cfn.yaml"

  # Terraform Code Folder for the SageMaker Projects  
  sm_project_folder = "../sagemaker-project-setup"
  source_files      = ["${local.sm_project_folder}/main.tf"]

  # Output zip artifacts for the Terraform SageMaker Project Code  
  output_files         = "tf-code-zip"
  output_tf_zip_folder = "tf-code"

  # Seed code
  seed_codebuild_checkin_zip = "GitRepositorySeedCodeCheckinCodeBuildProject-v1.0.zip"
  seed_code_zip = "model-building-workflow-v1.0.zip"
  seed_folder = "seed"

  # Tags for Resources  
  common_tags = {
    Terraform         = true
    Organization      = var.organization
    Environment       = var.env
    Role              = var.role
    common_identifier = local.cmn_res_name
    Name              = local.cmn_res_name
  }

}
