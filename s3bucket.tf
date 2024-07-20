
# Create S3 bucket
resource "aws_s3_bucket" "terraformbucket" {
  bucket = "ranjith-tf"
  tags = {
    Name        = "dev-env"
    Environment = "Dev"
  }
}


<<<<<<< HEAD
=======
# backend in S3

terraform {
  backend "s3" {
    bucket = "ranjith-tf"
    key    = "dev/terraform.state.tf"
    region = "ap-south-1"
  }
}
>>>>>>> 6588a32 (terraform code)



