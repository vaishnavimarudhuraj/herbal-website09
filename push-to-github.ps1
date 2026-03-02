param(
  [string]$RepoUrl = "https://github.com/vaishnavimarudhuraj/herbal-website09.git"
)

# Change to script directory (project root)
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir
Write-Host "Working directory: $scriptDir"

# Initialize git and set remote
git init
git remote remove origin -ErrorAction SilentlyContinue
git remote add origin $RepoUrl

# Add and commit
git add .
$hasHead = $false
try {
  git rev-parse --verify HEAD > $null 2>&1
  $hasHead = $true
} catch {
  $hasHead = $false
}

if (-not $hasHead) {
  git commit -m "Initial commit" || Write-Host "Nothing to commit"
} else {
  git commit -m "Update commit" || Write-Host "Nothing to commit"
}

# Ensure branch and push
git branch -M main
Write-Host "Pushing to $RepoUrl ..."
git push -u origin main

Write-Host "Done. If push failed, ensure you have a GitHub PAT or SSH configured for authentication."
