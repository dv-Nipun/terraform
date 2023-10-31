# Terraform
### Terraform AWS EC2 Instance Creation and Destruction

This Terraform project automates the provisioning and deprovisioning of AWS EC2 instances. It allows you to easily create and destroy virtual machines on AWS using Infrastructure as Code (IaC) principles.
# Prerequisites

Before you begin, ensure you have the following in place:

    Terraform installed on your local machine.
    AWS credentials configured properly with the necessary permissions for EC2 instance creation and destruction.

# Configuration

    Clone this repository to your local machine:

**git clone <repository-url>**
**cd terraform-ec2-demo**

Initialize your Terraform workspace:

**terraform init**

Create a terraform.tfvars file with your AWS access and secret key. You can also configure other variables in this file:

hcl

  **aws_access_key = "your-access-key"**
    **aws_secret_key = "your-secret-key"**

    Review and customize the main.tf file to define your EC2 instance's specifications (e.g., instance type, key pair, security groups, etc.).

    Optionally, configure other settings in variables.tf and outputs.tf.

# Usage
# Create EC2 Instance

To create an EC2 instance, run:

**terraform apply**

Terraform will provide a summary of the changes it intends to make. If everything looks correct, confirm with a 'yes'.
# Destroy EC2 Instance

To destroy the EC2 instance and clean up resources, run:

**terraform destroy**

Terraform will prompt you for confirmation; type 'yes' to proceed.
Outputs

After applying the Terraform configuration, you can use the outputs to obtain useful information about the created EC2 instance. Example:


# Outputs:

**public_ip = "X.X.X.X"**

# Cleanup

After destroying the resources, you can clean up your workspace by running:

**terraform destroy**

# Important Notes

    Caution: Be careful when running terraform destroy as it will permanently remove your EC2 instance and associated resources.

    Ensure you have AWS credentials set up properly, and you have the necessary permissions for EC2 instances.

    Customize the Terraform code in main.tf and variables.tf according to your requirements.
