locals {
  lfa_bucket      = "${var.bucket_name}"
  lfa_logs_bucket = "${local.lfa_bucket}-logs"
}

resource "aws_s3_bucket" "lfa" {
  bucket        = "${local.lfa_bucket}"
  acl           = "private"
  force_destroy = false

  versioning {
    enabled = false
  }

  logging {
    target_bucket = "${aws_s3_bucket.lfa_logs.id}"
    target_prefix = "log/"
  }
}

resource "aws_s3_bucket_metric" "lfa" {
  bucket = "${aws_s3_bucket.lfa.id}"
  name   = "EntireBucket"
}

resource "aws_s3_bucket" "lfa_logs" {
  bucket        = "${local.lfa_logs_bucket}"
  acl           = "log-delivery-write"
  force_destroy = false
}

data "template_file" "lfa_user_iam_policy" {
  template = "${file("${path.module}/lfa-user-iam-policy.json")}"

  vars {
    lfa_bucket_arn = "${aws_s3_bucket.lfa.arn}"
  }
}

module "lfa_user" {
  source = "git::https://github.com/lsst-sqre/terraform-aws-iam-user?ref=1.0.0"

  name   = "${var.user}"
  policy = "${data.template_file.lfa_user_iam_policy.rendered}"
}
