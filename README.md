# terraform-aws-cross-account-role

## Terraform scripts to enable Cross Account access. 
For AWS integrations, ShiftRight needs an AWS cross-account role for each AWS account that a customer would like to use.
It uses the well-known read-only SecurityAudit policy defined by AWS. 

ShiftRight also requires using an IAM role with external ID. 
ShiftRight will provide it's AWS account number and an external id that needs to be provided as an input to Terraform script. 

Following two steps need to be executed before scripts can run

#### 1. Provide reference to backend state store.   
Customer still need to provide main.tf file. 
main.tf file can be used to define the state store. For example, if S3 bucket as a backend store can be defined here.

#### 2. Provide input to scripts
We have provided sample terraform.tfvars files that can be used as an exmaple to populate correct information. For example, we can just rename this file to terraform.tfvars and put right information.


Once, these two steps are executed, we can run terraform plan and apply commands to create IAM role.
