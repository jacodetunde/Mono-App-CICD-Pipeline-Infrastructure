resource "aws_instance" "sonarqube" {
  ami                  = var.ubuntu
  instance_type        = "t2.medium"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.sonarqube.name]
#   iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "SonarQube"
  }

  user_data = file("sonarqube.sh")

}
