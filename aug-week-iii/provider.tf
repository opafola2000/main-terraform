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
