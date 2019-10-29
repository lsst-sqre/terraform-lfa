variable aws_region {
  description = "aws region."
  default     = "us-west-2"
}

variable aws_profile {
  description = "aws access profile. Eg., ~/.aws/credentials"
}

variable user {
  description = "aws iam user name"
}

variable bucket_name {
  description = "s3 bucket name"
}
