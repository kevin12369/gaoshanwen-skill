# gaoshanwen-skill GitHub Upload Setup
# Run this in PowerShell (PS 5.1+):
#   powershell -ExecutionPolicy Bypass -File setup-github.ps1
#
# This script will:
#   1. Initialize git repo
#   2. Set git user
#   3. Stage all files
#   4. Create first commit
#   5. Create GitHub public repo
#   6. Push to GitHub
#
# Make sure you've already run: gh auth login --web

$ErrorActionPreference = "Stop"
$ProjectPath = "D:\Coder\MiniProject\gaoshanwen-skill"

# Check we're in the right place
if (-not (Test-Path "$ProjectPath\SKILL.md")) {
    Write-Host "ERROR: SKILL.md not found at $ProjectPath" -ForegroundColor Red
    Write-Host "Please update `$ProjectPath in this script." -ForegroundColor Red
    exit 1
}

Set-Location $ProjectPath
Write-Host "Working in: $ProjectPath" -ForegroundColor Cyan
Write-Host ""

# 1. Verify gh auth
Write-Host "── Verifying gh auth ──" -ForegroundColor Yellow
$ghStatus = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: gh not authenticated. Run: gh auth login --web" -ForegroundColor Red
    Write-Host $ghStatus
    exit 1
}
Write-Host "gh auth OK" -ForegroundColor Green
Write-Host ""

# 2. git init (if not already)
Write-Host "── git init ──" -ForegroundColor Yellow
if (-not (Test-Path ".git")) {
    git init
    Write-Host "git init done" -ForegroundColor Green
} else {
    Write-Host "Already a git repo" -ForegroundColor Yellow
}
Write-Host ""

# 3. Set git user (project-level, not global)
Write-Host "── Setting git user ──" -ForegroundColor Yellow
git config user.name "kevin12369"
git config user.email "491750329@qq.com"
Write-Host "git user set" -ForegroundColor Green
Write-Host ""

# 4. Stage all files
Write-Host "── git add . ──" -ForegroundColor Yellow
git add .
$stagedCount = (git diff --cached --name-only | Measure-Object).Count
Write-Host "Staged $stagedCount files" -ForegroundColor Green
Write-Host ""

# 5. Create first commit
Write-Host "── git commit ──" -ForegroundColor Yellow
$commitMessage = @"
feat: 高善文风格宏观研究 SKILL v1.0.0

完整版 SKILL,模拟已故经济学家高善文(1971-2026)先生的分析框架与表达风格。

包含 5 大核心分析框架:
- 资产重估理论(2006)
- 产能周期理论(基于国际收支)
- 库存周期
- 猪周期通胀框架
- 房地产三阶段调整(2024 外滩)

跨平台兼容 OpenClaw / Hermes / Claude Code / Trae / Codex / Cursor / Mavis。

致敬高善文先生。

Co-Authored-By: mavis (Mavis Agent) <noreply@mavis.local>
"@

git commit -m $commitMessage
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: git commit failed" -ForegroundColor Red
    exit 1
}
Write-Host "Commit done" -ForegroundColor Green
Write-Host ""

# 6. Create GitHub repo and push
Write-Host "── gh repo create + push ──" -ForegroundColor Yellow
$description = "高善文风格宏观研究与财经分析 SKILL — 完整版,跨平台 Agent 兼容,致敬高善文先生(1971-2026)"

gh repo create gaoshanwen-skill `
    --public `
    --description $description `
    --source=. `
    --remote=origin `
    --push

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: gh repo create failed" -ForegroundColor Red
    Write-Host "If repo already exists, you can manually: gh repo create gaoshanwen-skill --public --push --source=." -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  全部完成!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "  仓库地址: https://github.com/kevin12369/gaoshanwen-skill" -ForegroundColor Cyan
Write-Host ""
Write-Host "  接下来你可能想做的:" -ForegroundColor Yellow
Write-Host "  1. 在 README.md 顶部添加 GitHub badge" -ForegroundColor White
Write-Host "  2. 在 GitHub 网页上设置 About / Topics" -ForegroundColor White
Write-Host "  3. 启用 Issues / Discussions" -ForegroundColor White
Write-Host "  4. 考虑用 gh skill 发布" -ForegroundColor White
Write-Host ""
