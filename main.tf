resource "aws_s3_bucket" "s3" {
  bucket        = "srmtest-destination"
  force_destroy = true
}

