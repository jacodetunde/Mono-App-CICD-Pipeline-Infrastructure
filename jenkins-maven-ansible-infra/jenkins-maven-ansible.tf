
# Resource to provision an ec2 instance with jenkins installed

resource "aws_instance" "maven" {
  ami                  = var.linux2
  instance_type        = "t2.medium"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.jenkins-maven-ansible.name]
  iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "Jenkins/Maven/Ansible"
  }
  user_data = file("jenkins-maven-ansible.sh")
}


# # Data source to get the access to the effective Account ID, 
# # User ID, and ARN in which Terraform is authorized
# # data "aws_caller_identity" "latest" {}


# # Pull ami ID based on filters
# data "aws_ami" "maven" {
#   most_recent = true

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-kernel-5.10-hvm-2.0.20230207.0-x86_64-gp2"]

#   }

#   owners = ["amazon"]
# }
