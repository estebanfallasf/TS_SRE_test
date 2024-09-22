
# -- object/main.tf -- #

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = {
    "Name" = "${var.bucket_name}"
  }
}

/*resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
}
/*
resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.s3_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}*/

resource "aws_s3_object" "object" {
  bucket       = var.bucket_name
  key          = "Hello_World.png"
  source       = var.source_file #"object/Hello_World.png"
  content_type = "image/png"

  etag = filemd5(var.source_file)
  #acl  = "public-read"
  depends_on = [
    aws_s3_bucket.s3_bucket
  ]
}

/*
resource "aws_s3_bucket_object" "object1" {
for_each = fileset("myfiles/", "*")
bucket = aws_s3_bucket.b1.id
key = each.value
source = "myfiles/${each.value}"
etag = filemd5("myfiles/${each.value}")
}

*/

