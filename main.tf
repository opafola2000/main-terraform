terraform {       #terraform block
  required_providers {    # required providers block
    aws = {     # aws provider
      source  = "hashicorp/aws"
      version = "5.10.0"
    }
    github = {    # github repo block
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {     # to create a github repo
  token = "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"      # another PAT may be required if this expired
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"       # This is retrieved from .aws/credential file where aws creds are stored as default.
}