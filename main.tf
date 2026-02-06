terraform {
  required_version = ">= 1.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# A simple null resource that does nothing
resource "null_resource" "example" {
  triggers = {
    value = "TOEFL Vocabulary Test Project"
  }
}

output "project_name" {
  value       = "TOEFL Vocabulary Test"
  description = "The name of this project"
}
