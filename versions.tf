terraform {
  required_providers {
    davinci = {
      source  = "pingidentity/davinci"
      version = "0.5.1"
    }
    pingone = {
      source  = "pingidentity/pingone"
      version = "1.9.0"
    }
  }
}

provider "davinci" {
  # Configuration options
}

provider "pingone" {
  # Configuration options
}
