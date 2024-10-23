data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-test-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
