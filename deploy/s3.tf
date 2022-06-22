resource "aws_s3_bucket" "app_public_files" {
  bucket        = "${local.prefix}-files-ed"
  acl           = "public-read"
  force_destroy = true
}


