# terraform-aws-cross-account-role

## Terraform scripts to enable Cross Account access. 
For AWS integrations, ShiftRight needs an AWS cross-account role for each AWS account that a customer would like to use.
It uses the well-known read-only SecurityAudit policy defined by AWS. 

ShiftRight also requires using an IAM role with external ID. 
ShiftRight will provide it's AWS account number and an external id that needs to be provided as an input to Terraform script. 

Following two optional steps can be executed before scripts are run

#### 1. Provide reference to backend state store.   
Provided scripts don't have any reference to remote backend state store. By default, it will use local file to store state. It is better to use remote state backend like S3 bucket to store state information.

#### 2. Provide input to scripts
We have provided sample terraform.tfvars files that can be used as an example to populate correct information. For example, we can just rename this file to terraform.tfvars and put right information. 
Alternatively, we can also provide variable values in terraform command line. 

