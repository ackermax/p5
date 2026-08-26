$ErrorActionPreference = "Stop"
Set-Location -Path $PSScriptRoot

function Invoke-Git {
    param([string[]]$Arguments, [string]$FailureMessage)

    & git @Arguments
    if ($LASTEXITCODE -ne 0) {
        Write-Host ""
        Write-Host "ERROR: $FailureMessage (git exited with $LASTEXITCODE)" -ForegroundColor Red
        Write-Host "Nothing was published. Resolve the problem above and re-run .\publish.ps1" -ForegroundColor Red
        exit 1
    }
}

$branch = (git rev-parse --abbrev-ref HEAD).Trim()

Write-Host "Checking for changes..." -ForegroundColor Cyan

$changes = git status --porcelain

if ($changes) {
    Write-Host "Staging changes..." -ForegroundColor Cyan
    Invoke-Git @("add", ".") "Failed to stage changes."

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    $commitMessage = "update notes $timestamp"

    Write-Host "Committing: $commitMessage" -ForegroundColor Cyan
    Invoke-Git @("commit", "-m", $commitMessage) "Failed to commit."
}
else {
    Write-Host "No new file changes." -ForegroundColor Yellow
}

# Even with a clean working tree there may be commits from an earlier run
# whose push failed, so always compare against the remote before deciding.
Invoke-Git @("fetch", "origin", $branch) "Failed to contact GitHub. Check your network and credentials."

$unpushed = @(git rev-list "origin/$branch..HEAD")
if ($unpushed.Count -eq 0) {
    Write-Host "Nothing to publish - GitHub is already up to date." -ForegroundColor Yellow
    exit 0
}

Write-Host "Pushing $($unpushed.Count) commit(s) to GitHub..." -ForegroundColor Cyan
Invoke-Git @("push", "origin", $branch) "Push failed. Your work is committed locally but NOT published."

Write-Host ""
Write-Host "Done. Site will rebuild in 1-3 minutes." -ForegroundColor Green
Write-Host "Watch the Actions tab on your repo for progress." -ForegroundColor Green
