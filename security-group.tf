resource "aws_security_group" "webserver-sg" {
  provider = aws.us-east-1
  name        = "webserver-sg"
  description = "WebServer Security Group"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidrs_access_remote
  }

    tags = {
    Name        = "WebServerSecurityGroup"
    Description = "Security group for web servers in develop environment."
  }
}

resource "aws_security_group" "app-sg" {
  name        = "app-sg"
  provider = aws.us-east-2
  description = "Application Security Group"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidrs_access_remote
  }

    tags = {
    Name        = "ApplicationSecurityGroup"
    Description = "Application group for web servers in develop environment."
  }
}