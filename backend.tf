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
