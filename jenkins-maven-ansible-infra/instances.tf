
resource "aws_instance" "prod" {
  ami                  = var.linux2
  instance_type        = "t2.micro"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.instances.name]
#   iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "Prod-Env"
  }

  user_data = file("instances.sh")

}


resource "aws_instance" "dev" {
  ami                  = var.linux2
  instance_type        = "t2.micro"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.instances.name]
#   iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "Dev-Env"
  }

  user_data = file("instances.sh")

}


resource "aws_instance" "stage" {
  ami                  = var.linux2
  instance_type        = "t2.micro"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.instances.name]
#   iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "Stage-Env"
  }

  user_data = file("instances.sh")

}


# # Data source to get the access to the effective Account ID, 
# # User ID, and ARN in which Terraform is authorized
# data "aws_caller_identity" "current" {}


# # Pull ami ID based on filters
# data "aws_ami" "linux1" {
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


# data "aws_ami" "linux2" {
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

# data "aws_ami" "linux3" {
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
# data "aws_ami" "linux4" {
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
# Resource to provision an ec2 instance with jenkins installed
