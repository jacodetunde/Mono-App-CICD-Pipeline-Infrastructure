resource "aws_instance" "prometheus" {
  ami                  = var.ubuntu
  instance_type        = "t2.micro"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.prometheus.name]
  iam_instance_profile = "prometheus-role"


  tags = {
    Name = "Prometheus"
  }

#   user_data = file("sonarqube.sh")

}


resource "aws_instance" "grafana" {
  ami                  = var.ubuntu
  instance_type        = "t2.micro"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.grafana.name]
#   iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "Grafana"
  }

#   user_data = file("sonarqube.sh")

}


resource "aws_instance" "splunk" {
  ami                  = var.linux2
  instance_type        = "t2.micro"
  key_name             = var.keypair #Replace with your key name
  security_groups      = [aws_security_group.splunk.name]
#   iam_instance_profile = "EC2_SSM-Role"


  tags = {
    Name = "Splunk-Indexer"
  }

#   user_data = file("instance.sh")

}
