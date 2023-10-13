terraform {
  backend "remote" {
    organization = "food_corp"

    workspaces {
      name = "app-prod"
    }
  }
}
