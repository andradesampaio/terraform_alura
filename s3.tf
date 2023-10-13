resource "aws_s3_bucket" "logging_ws_bucket" {
  bucket = "log-ws-it"
  tags = {
    Name        = "LogWebServerBucket"
    Description = "Bucket for web servers in develop environment."
  }
}