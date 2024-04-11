resource "aws_s3_bucket" "example" {
  bucket = "hiiiiiiii"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
