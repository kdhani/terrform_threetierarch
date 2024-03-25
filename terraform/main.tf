terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.region
}

data "aws_secretsmanager_secret" "database_credentials" {
name="sql_credentials_1" #name of secret in aws secrets manager
}
resource "aws_db_instance" "mysql" {
username=data.aws_secretsmanager_secret.database_credentials.secret["username"]
password=data.aws_secretsmanager_secret.database_credentials.secret["password"]
}
