terraform {
  backend "s3" {
    bucket         = "cyloc-terraform-state-lab-2026"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cyloc-terraform-lock"
    use_lockfile   = true
    encrypt        = true
  }
}
{
  "Sid": "TerraformS3NativeLocking",
  "Effect": "Allow",
  "Action": [
    "s3:GetObject",
    "s3:PutObject",
    "s3:DeleteObject"
  ],
  "Resource": "arn:aws:s3:::cyloc-terraform-state-lab-2026/terraform.tfstate.tflock"
}
