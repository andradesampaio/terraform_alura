resource "aws_instance" "srv-dev" {
provider = aws.us-east-1
count = 2
ami = var.amis_aws["us-east-1"]
instance_type = "t2.micro"
key_name = var.key_name
vpc_security_group_ids = [aws_security_group.webserver-sg.id]
depends_on = [ aws_s3_bucket.logging_ws_bucket ]

  tags = {
   Name = "srv-dev[0${count.index}]"
   Environment = "Develop"
   Project = "Project Food"
   Application = "WebServer"
   Stack = "WebServerStack"
   Owner = "only@example.com"
   CostCenter = "12345"
   Department = "IT Operations"
  }
}



resource "aws_instance" "srv-app" {
provider = aws.us-east-2
ami = var.amis_aws["us-east-2"]
instance_type = "t2.micro"
key_name = var.key_name
vpc_security_group_ids = [aws_security_group.app-sg.id]
depends_on = [ aws_dynamodb_table.app-dynamodb-dev ]

  tags = {
   Name = "srv-app"
   Environment = "Develop"
   Project = "Project Food"
   Application = "Application"
   Stack = "ApplicationStack"
   Owner = "only@example.com"
   CostCenter = "12345"
   Department = "IT Operations"
  }
}