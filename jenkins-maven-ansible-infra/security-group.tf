data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "jenkins-maven-ansible" {
  name        = "Jenkins-Maven-Ansible-SG"
  description = "Allow ssh to maven server"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 8080
    to_port     = 8080
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 9100
    to_port     = 9100
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}


resource "aws_security_group" "sonarqube" {
  name        = "SonarQube-SG"
  description = "Allow HTTP to sonarqube server"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "HTTPS ingress"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 9000
    to_port     = 9000
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}


resource "aws_security_group" "nexus" {
  name        = "Nexus-SG"
  description = "Allow HTTP to nexus server"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "HTTPS ingress"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 8081
    to_port     = 8081
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}

resource "aws_security_group" "instances" {
  name        = "instances-sg"
  description = "Allow HTTP to nexus server"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "HTTPS ingress"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    description = "HTTPS ingress"
    from_port   = 9997
    to_port     = 9997
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 8080
    to_port     = 8080
  }
  
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}

resource "aws_security_group" "prometheus" {
  name        = "Prometheus-SG"
  description = "Allow HTTP to nexus server"
  vpc_id      = data.aws_vpc.default.id
  
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 9090
    to_port     = 9090
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}

resource "aws_security_group" "grafana" {
  name        = "Grafana-SG"
  description = "Allow HTTP to nexus server"
  vpc_id      = data.aws_vpc.default.id
  
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 3000
    to_port     = 3000
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}

resource "aws_security_group" "splunk" {
  name        = "Splunk-SG"
  description = "Allow HTTP to nexus server"
  vpc_id      = data.aws_vpc.default.id
  
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
  }
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 8000
    to_port     = 8000
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 9100
    to_port     = 9100
  }
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http ingress"
    protocol    = "tcp"
    from_port   = 9997
    to_port     = 9997
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}