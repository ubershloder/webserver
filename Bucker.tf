resource "aws_s3_bucket" "b" {
  bucket = "uber-self-gitlab-serverless"
  acl    = "public-read"

  website {
    index_document = "frontend.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}
