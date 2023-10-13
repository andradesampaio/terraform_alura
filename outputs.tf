output "webserver-ips" {
    value = aws_instance.srv-dev[*].public_ip
}

output "webserver-arns" {
    value = aws_instance.srv-dev[*].arn
}

output "dynamodb" {
    value = aws_dynamodb_table.app-dynamodb-dev.name
}