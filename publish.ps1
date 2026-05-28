$ErrorActionPreference = "Stop"
Set-Location -Path $PSScriptRoot

Write-Host "Checking for changes..." -ForegroundColor Cyan

$changes = git status --porcelain
if (-not $changes) {
    Write-Host "Nothing to publish - vault is up to date." -ForegroundColor Yellow
    exit 0
}

Write-Host "Staging changes..." -ForegroundColor Cyan
git add .

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
$commitMessage = "update notes $timestamp"

Write-Host "Committing: $commitMessage" -ForegroundColor Cyan
git commit -m $commitMessage

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push

Write-Host ""
Write-Host "Done. Site will rebuild in 1-3 minutes." -ForegroundColor Green
Write-Host "Watch the Actions tab on your repo for progress." -ForegroundColor Green