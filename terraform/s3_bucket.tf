resource "aws_s3_bucket" "codica_bucket" {
  bucket = "gklward-bucket"
}

resource "aws_s3_bucket_object" "codica_object" {
  bucket = aws_s3_bucket.codica_bucket.id
  key    = "terraform.tfstate"
  source = "/home/gklward/codica_devops_test/terraform/terraform.tfstate"
}