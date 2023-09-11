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

provider "github" {     #tocreateagithubrepo
token= var.token       #anotherPATmayberequiredifthisexpired
}
