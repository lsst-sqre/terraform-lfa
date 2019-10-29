deployment for Large File Annex (LFA) s3 buckets
===

[![Build
Status](https://travis-ci.com/lsst-sqre/terraform-lfa.png)](https://travis-ci.com/lsst-sqre/terraform-lfa)

Usage
---

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_profile | aws access profile. Eg., ~/.aws/credentials | string | n/a | yes |
| aws\_region | aws region. | string | `"us-west-2"` | no |
| bucket\_name | s3 bucket name | string | n/a | yes |
| user | aws iam user name | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| AWS\_ACCESS\_KEY\_ID |  |
| AWS\_SECRET\_ACCESS\_KEY |  |
| LFA\_S3\_BUCKET | s3 bucket name |
| LFA\_USER | aws iam user name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

`pre-commit` hooks
---

```bash
go get github.com/segmentio/terraform-docs
pip install --user pre-commit
pre-commit install

# manual run
pre-commit run -a
```

See also
---

* [`terraform`](https://www.terraform.io/)
* [`terragrunt`](https://github.com/gruntwork-io/terragrunt)
* [`terraform-docs`](https://github.com/segmentio/terraform-docs)
* [`pre-commit`](https://github.com/pre-commit/pre-commit)
* [`pre-commit-terraform`](https://github.com/antonbabenko/pre-commit-terraform)
