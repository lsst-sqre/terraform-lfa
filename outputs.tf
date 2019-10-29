output "LFA_USER" {
  description = "aws iam user name"
  value       = "${module.lfa_user.name}"
}

output "AWS_ACCESS_KEY_ID" {
  sensitive = true
  value     = "${module.lfa_user.id}"
}

output "AWS_SECRET_ACCESS_KEY" {
  sensitive = true
  value     = "${module.lfa_user.secret}"
}

output "LFA_S3_BUCKET" {
  description = "s3 bucket name"
  value       = "${aws_s3_bucket.lfa.id}"
}
