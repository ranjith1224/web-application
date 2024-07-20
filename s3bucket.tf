
# Create S3 bucket
resource "aws_s3_bucket" "terraformbucket" {
  bucket = "ranjith-tf"
  tags = {
    Name        = "dev-env"
    Environment = "Dev"
  }
}




