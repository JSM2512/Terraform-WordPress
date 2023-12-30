# Terraform-WordPress
Deploy a basic WordPress website on Amazon EC2 using Terraform.

### Introduction
Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. It enables users to define and provision infrastructure in a declarative configuration language. With Terraform, you can describe the components of your infrastructure—such as servers, databases, networks, and other resources—using a configuration file, and then Terraform will manage the creation, modification, and deletion of these resources.

## Steps
### Create EC2 Instance on AWS:

Launch a new EC2 Instance on AWS, using Ubuntu as the AMI (Amazon Machine Image).
Ensure to allow HTTP traffic for external access. (Consider using the free tier t2.micro instance)
### Connect to EC2 Instance:

Establish a connection to your EC2 Instance.
### Install Terraform:

Follow the installation guide here to install Terraform.
### Install Docker:

Execute the following commands:

"sudo apt-get install docker.io"

"sudo chown $USER /var/log/docker.sock" # May be required for access permissions

### Create Terraform Directory:

Create a new directory named "terraform-wordpress"

### Create Terraform Configuration:

Inside the directory, create a file named main.tf with the content provided in this repository.

### Initialize Terraform:

Run the command: "terraform init"

### Validate Terraform Configuration:

Ensure the correctness of your main.tf file: "terraform validate"

### Review Terraform Plan:

Check the execution plan for your infrastructure: "terraform plan"

### Apply Terraform Configuration:

Apply the configuration to create your WordPress setup: "terraform apply"

### Check WordPress Container:

After successful completion, inspect the running WordPress container: "docker ps"

### Access WordPress Site:

Retrieve the public IP address from the terminal where the EC2 instance is connected.
Access the WordPress site using the public IP and port 80: https://<Your_Public_IP>:80

Feel free to explore and enhance your WordPress deployment!
