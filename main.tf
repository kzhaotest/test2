provider "github" {
  organization = "kzhaotest"
}

resource "github_branch_protection" "branch" {
  repository_id  = "test2"
  pattern        = "main"
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}
