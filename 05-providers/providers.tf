terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias  = "us-west"
}

resource "aws_s3_bucket" "eu_east_1" {
  bucket = "some-random-bucket-name-tobias-bot"
}

resource "aws_s3_bucket" "eu_west_1" {
  bucket   = "some-random-bucket-name-toby-bot"
  provider = aws.us-west
}