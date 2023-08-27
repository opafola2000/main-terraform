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
