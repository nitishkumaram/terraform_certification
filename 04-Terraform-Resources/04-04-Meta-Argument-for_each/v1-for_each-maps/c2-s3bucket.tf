# Create S3 Bucket per environment with for_each and maps
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "mys3bucket" {
  
  # for_each Meta argument

  for_each = {
    "dev"  = "my-dapp-bucketnitish"
    "qa"   = "my-qapp-bucketnitish"
    "stag" = "my-sapp-bucketnitish"
    "prod" = "my-papp-bucketnitish"
  }
  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    Environment = "${each.key}"
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}

# resource "aws_s3_bucket_acl" "bucket_acl" {
#   bucket = aws_s3_bucket.mys3bucket.id
#   acl    = "private"
# }

# for_each Meta-Argument
